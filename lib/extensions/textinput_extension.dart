import 'package:flutter/services.dart';

class UpperCaseTextFormatter extends TextInputFormatter {
  @override
  TextEditingValue formatEditUpdate(
    TextEditingValue oldValue,
    TextEditingValue newValue,
  ) {
    return TextEditingValue(
      text: capitalize(newValue.text),
      selection: newValue.selection,
    );
  }
}

String capitalize(String value) {
  if (value.trim().isEmpty) return '';
  final words = value.split(' ');
  final capitalized = words.map(
    (word) {
      final firstLetter = word.substring(0, 1).toUpperCase();
      final rest = word.substring(1).toLowerCase();

      return '$firstLetter$rest';
    },
  );

  return capitalized.join(' ');
}
