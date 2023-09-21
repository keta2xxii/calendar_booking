import 'dart:io';

import 'package:calendar_booking_app/core/request.dart';
import 'package:calendar_booking_app/core/service_locator.dart';
import 'package:calendar_booking_app/features/authen/data/models/language_model.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';
import 'package:shared_preferences/shared_preferences.dart';

// ignore: constant_identifier_names
const String LANGUAGE_KEY = 'language';

/// service to handle language
abstract class LanguageService {
  /// get locale from cache
  Locale getLocale();

  /// set locale to cache
  Future<void> setLocale(BuildContext context, Locale locale);

  List<Language> get languages;

  Language get language;
}

class LanguageServiceImpl implements LanguageService {
  @override
  Language get language {
    final currentLocale = getLocale();

    return languages.firstWhere(
      (element) => element.languageCode == currentLocale.languageCode,
    );
  }

  @override
  List<Language> get languages => [
        Language(
          name: tr('english'),
          flag: 'assets/icons/english.svg',
          languageCode: 'en',
          countryCode: 'US',
        ),
        Language(
          name: tr('vietnamese'),
          flag: 'assets/icons/vietnamese.svg',
          languageCode: 'vi',
          countryCode: 'VN',
        ),
      ];

  /// get locale from cache
  @override
  Locale getLocale() {
    final String phoneLocaleName = kIsWeb ? 'vi_VN' : Platform.localeName;
    final String currentLanguage =
        serviceLocator<SharedPreferences>().getString(LANGUAGE_KEY) ??
            phoneLocaleName;
    serviceLocator<SharedPreferences>()
        .setString(LANGUAGE_KEY, currentLanguage);
    Locale result = const Locale('vi', 'VN');
    switch (currentLanguage) {
      case 'vi_VN':
        result = const Locale('vi', 'VN');
      case 'en_US':
        result = const Locale('en', 'US');
    }
    serviceLocator<Request>().updateLanguage(result.languageCode);

    return result;
  }

  /// set locale to cache
  @override
  Future<void> setLocale(BuildContext context, Locale locale) {
    serviceLocator<SharedPreferences>()
        .setString(LANGUAGE_KEY, locale.toString());
    serviceLocator<Request>().updateLanguage(locale.languageCode);

    return context.setLocale(locale);
  }
}
