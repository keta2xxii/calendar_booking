import 'package:calendar_booking_app/extensions/string_extension.dart';
import 'package:easy_localization/easy_localization.dart';

class Validator {
  const Validator._();

  static String? password(String? value) {
    if (value == null || value.isEmpty) {
      return tr('please_input_password');
    }
    if (value.length < 6) {
      return tr('password_must_be_at_least_6_characters');
    }
    if (!value.isValidPassword()) {
      return tr('password_must_follow_pattern');
    }

    return null;
  }
}
