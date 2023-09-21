import 'package:calendar_booking_app/core/service_locator.dart';
import 'package:calendar_booking_app/core/theme.dart';
import 'package:calendar_booking_app/features/authen/presentation/blocs/bloc/booking_bloc.dart';
import 'package:calendar_booking_app/firebase_options.dart';
import 'package:calendar_booking_app/routes/app_router.dart';
import 'package:calendar_booking_app/routes/my_observer.dart';
import 'package:calendar_booking_app/services/language_service.dart';
import 'package:calendar_booking_app/services/remote_config_service.dart';
import 'package:calendar_booking_app/services/user_cache_service.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_crashlytics/firebase_crashlytics.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_native_splash/flutter_native_splash.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

void main() async {
  final WidgetsBinding widgetsBinding =
      WidgetsFlutterBinding.ensureInitialized();
  FlutterNativeSplash.preserve(widgetsBinding: widgetsBinding);
  await setupServiceLocator();
  await AppTheme.inititalTheme();
  await EasyLocalization.ensureInitialized();
  await serviceLocator<UserCacheService>().intialUser();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  await serviceLocator<RemoteConfigService>().initialize();
  FlutterError.onError = (errorDetails) {
    // If you wish to record a "non-fatal" exception, please use `FirebaseCrashlytics.instance.recordFlutterError` instead
    FirebaseCrashlytics.instance.recordFlutterFatalError(errorDetails);
  };
  PlatformDispatcher.instance.onError = (error, stack) {
    // If you wish to record a "non-fatal" exception, please remove the "fatal" parameter
    FirebaseCrashlytics.instance.recordError(error, stack, fatal: true);

    return true;
  };

  runApp(
    EasyLocalization(
      supportedLocales: const [Locale('en', 'US'), Locale('vi', 'VN')],
      path: 'assets/translations',
      startLocale: serviceLocator<LanguageService>().getLocale(),
      fallbackLocale: const Locale('vi', 'VN'),
      child: MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  MyApp({super.key});

  final _appRouter = AppRouter();

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) => BookingBloc(),
        ),
      ],
      child: ValueListenableBuilder<ThemeMode>(
        valueListenable: AppTheme.notifier,
        builder: (context, value, child) => ScreenUtilInit(
          designSize: const Size(428, 926),
          minTextAdapt: true,
          splitScreenMode: true,
          builder: (context, child) {
            return MaterialApp.router(
              localizationsDelegates: context.localizationDelegates,
              supportedLocales: context.supportedLocales,
              locale: context.locale,
              routerConfig: _appRouter.config(
                navigatorObservers: () => [MyObserver()],
              ),
              theme: AppTheme.lightTheme,
              darkTheme: AppTheme.darkTheme,
              themeMode: value,
            );
          },
        ),
      ),
    );
  }
}
