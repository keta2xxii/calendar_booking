import 'package:auto_route/auto_route.dart';
import 'package:calendar_booking_app/core/service_locator.dart';
import 'package:calendar_booking_app/services/analytic_service.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

class MyObserver extends AutoRouterObserver {
  @override
  void didPush(Route route, Route? previousRoute) {
    if (kDebugMode) {
      print('New route pushed: ${route.data?.path} - ${route.settings.name}');
    } else if (route.data?.path != null && route.settings.name != null) {
      serviceLocator<AnalyticService>().logScreen(
        name: route.data!.path,
        screenClassOverride: route.settings.name!,
      );
    }
  }

  // only override to observer tab routes
  @override
  void didInitTabRoute(TabPageRoute route, TabPageRoute? previousRoute) {
    if (kDebugMode) {
      print('Tab route visited: ${route.path} - ${route.name}');
    } else {
      serviceLocator<AnalyticService>().logScreen(
        name: route.path,
        screenClassOverride: route.name,
      );
    }
  }

  @override
  void didChangeTabRoute(TabPageRoute route, TabPageRoute previousRoute) {
    if (kDebugMode) {
      print('Tab route re-visited: ${route.path} - ${route.name}');
    } else {
      serviceLocator<AnalyticService>().logScreen(
        name: route.path,
        screenClassOverride: route.name,
      );
    }
  }
}
