import 'package:calendar_booking_app/core/request.dart';
import 'package:calendar_booking_app/features/authen/data/datasource/authen_remote_datasource.dart';
import 'package:calendar_booking_app/features/authen/data/repository/authen_repository.dart';
import 'package:calendar_booking_app/features/authen/domain/usecases/authen_usecase.dart';
import 'package:calendar_booking_app/features/authen/domain/usecases/check_user_login_status.dart';
import 'package:calendar_booking_app/features/authen/domain/usecases/forgot_password_usecase.dart';
import 'package:calendar_booking_app/features/authen/domain/usecases/register_usecase.dart';
import 'package:calendar_booking_app/services/analytic_service.dart';
import 'package:calendar_booking_app/services/dialog_service.dart';
import 'package:calendar_booking_app/services/language_service.dart';
import 'package:calendar_booking_app/services/navigation_service.dart';
import 'package:calendar_booking_app/services/remote_config_service.dart';
import 'package:calendar_booking_app/services/theme_cache_service.dart';
import 'package:calendar_booking_app/services/toast_service.dart';
import 'package:calendar_booking_app/services/user_cache_service.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:get_it/get_it.dart';
import 'package:shared_preferences/shared_preferences.dart';

final serviceLocator = GetIt.instance;

Future<void> setupServiceLocator() async {
  /// authen feature
  // usecases
  serviceLocator.registerFactory<CheckUserLoginStatus>(
    () => CheckUserLoginStatusImpl(),
  );
  serviceLocator.registerFactory<AuthenUseCase>(
    () => AuthenUseCaseImpl(),
  );
  serviceLocator.registerFactory<RegisterUseCase>(
    () => RegisterUseCaseImpl(),
  );
  serviceLocator.registerFactory<ForgotPasswordUseCase>(
    () => ForgotPasswordUseCaseImpl(),
  );

  //datasource
  serviceLocator.registerFactory<AuthenRemoteDataSource>(
    () => AuthenRemoteDataSourceImpl(),
  );

  //repositories
  serviceLocator.registerFactory<AuthenRepository>(
    () => AuthenRepositoryImpl(),
  );

  /// services
  serviceLocator.registerSingleton<UserCacheService>(
    UserCacheService(),
  );
  serviceLocator.registerSingleton<ThemeCacheService>(
    ThemeCacheService(),
  );
  serviceLocator.registerSingleton<NavigationService>(
    NavigationService(),
  );
  serviceLocator.registerSingleton<LanguageService>(
    LanguageServiceImpl(),
  );
  serviceLocator.registerLazySingleton<ToastService>(
    () => ToastServiceImpl(),
  );
  serviceLocator.registerLazySingleton<DialogService>(
    () => DialogServiceImpl(),
  );
  serviceLocator.registerLazySingleton<AnalyticService>(
    () => AnalyticServiceImpl(),
  );
  serviceLocator.registerLazySingleton<RemoteConfigService>(
    () => RemoteConfigServiceImpl(),
  );

  /// external
  final sharedPreferences = await SharedPreferences.getInstance();
  serviceLocator.registerFactory<SharedPreferences>(() => sharedPreferences);
  const flutterSecureStorage = FlutterSecureStorage();
  serviceLocator
      .registerFactory<FlutterSecureStorage>(() => flutterSecureStorage);
  // request
  serviceLocator.registerSingleton<Request>(Request());
}
