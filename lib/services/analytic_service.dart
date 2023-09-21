import 'package:firebase_analytics/firebase_analytics.dart';

abstract class AnalyticService {
  void setUserId({required String userId});

  void setUserProperty({required String name, required String value});

  void logEvent({required String name, Map<String, dynamic>? parameters});

  void logScreen({required String name, required String screenClassOverride});

  void logLogin({required String method});
}

class AnalyticServiceImpl implements AnalyticService {
  FirebaseAnalytics analytics = FirebaseAnalytics.instance;
  FirebaseAnalyticsObserver observer =
      FirebaseAnalyticsObserver(analytics: FirebaseAnalytics.instance);

  @override
  void setUserId({required String userId}) {
    analytics.setUserId(id: userId);
  }

  @override
  void setUserProperty({required String name, required String value}) {
    analytics.setUserProperty(name: name, value: value);
  }

  @override
  void logEvent({required String name, Map<String, dynamic>? parameters}) {
    analytics.logEvent(name: name, parameters: parameters);
  }

  @override
  void logScreen({required String name, required String screenClassOverride}) {
    analytics.setCurrentScreen(
      screenName: name,
      screenClassOverride: screenClassOverride,
    );
  }

  @override
  void logLogin({required String method}) {
    analytics.logLogin(loginMethod: method);
  }
}
