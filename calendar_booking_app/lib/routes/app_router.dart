import 'package:auto_route/auto_route.dart';
import 'package:calendar_booking_app/core/service_locator.dart';
import 'package:calendar_booking_app/features/authen/presentation/pages/splash_page.dart';
import 'package:calendar_booking_app/routes/app_routes.dart';
import 'package:calendar_booking_app/services/navigation_service.dart';

part 'app_router.gr.dart';

@AutoRouterConfig(replaceInRouteName: 'Page,Route')
class AppRouter extends _$AppRouter {
  AppRouter()
      : super(navigatorKey: serviceLocator<NavigationService>().navigatorKey);

  @override
  List<AutoRoute> get routes => [
        AutoRoute(
          path: AppRoutes.splash,
          page: SplashRoute.page,
          initial: true,
        ),
      ];
}
