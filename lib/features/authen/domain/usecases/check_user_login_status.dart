import 'package:calendar_booking_app/core/service_locator.dart';
import 'package:calendar_booking_app/services/user_cache_service.dart';

abstract class CheckUserLoginStatus {
  bool checkIfUserLoggedIn();

  Future<bool> isFirstOpen();
}

class CheckUserLoginStatusImpl extends CheckUserLoginStatus {
  @override
  // check if user used to login before
  bool checkIfUserLoggedIn() {
    final user = serviceLocator<UserCacheService>().user;

    return user?.token?.isNotEmpty ?? false;
  }

  @override
  Future<bool> isFirstOpen() async {
    return await serviceLocator<UserCacheService>().getIsFirstOpen();
  }
}
