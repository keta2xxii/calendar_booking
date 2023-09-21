import 'dart:convert';

import 'package:calendar_booking_app/core/request.dart';
import 'package:calendar_booking_app/core/service_locator.dart';
import 'package:calendar_booking_app/features/authen/data/models/user_model.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';

// ignore: constant_identifier_names
const String USER_CACHE = 'user_cache';
// ignore: constant_identifier_names
const String IS_FIRST_OPEN = 'is_first_open';

class UserCacheService {
  User? _user;
  bool _isFirstOpen = true;

  User? get user => _user;

  bool get isFirstOpen => _isFirstOpen;

  FlutterSecureStorage get secureStg => serviceLocator<FlutterSecureStorage>();

  /// save user to cache
  Future<void> saveUser(User user) async {
    _user = user;
    await secureStg.write(key: USER_CACHE, value: jsonEncode(user));
  }

  /// clear local user
  Future<void> clearUser() async {
    _user = null;
    await secureStg.delete(key: USER_CACHE);
  }

  /// get user from cache
  Future<void> intialUser() async {
    User usr;
    final userMap = await secureStg.read(key: USER_CACHE);
    if (userMap == null || userMap.isEmpty) {
      usr = User();
    } else {
      try {
        usr = User.fromJson(jsonDecode(userMap));
        saveUser(usr);
      } catch (e) {
        usr = User();
      }
    }
    if (usr.token != null || usr.token!.isNotEmpty) {
      // update header token
      serviceLocator<Request>().updateAuthorization(usr.token!);
    }
    _user = usr;
  }

  Future<void> saveIsFirstOpen(bool isFirstOpen) async {
    _isFirstOpen = isFirstOpen;
    await secureStg.write(key: IS_FIRST_OPEN, value: isFirstOpen.toString());
  }

  Future<bool> getIsFirstOpen() async {
    final isFirstOpen = await secureStg.read(key: IS_FIRST_OPEN);

    return isFirstOpen == null || isFirstOpen.isEmpty ? true : false;
  }
}
