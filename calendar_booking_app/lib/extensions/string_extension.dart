extension StringValidatorExtension on String {
  bool isValidEmail() {
    final regex = RegExp(r'^[\w-.]+@([\w-]+\.)+[\w-]{2,4}$');

    return regex.hasMatch(this);
  }

  bool isValidPassword() {
    if (length < 6) return false;
    const String passwordPattern =
        r'^(?=.*?[A-Z])(?=.*?[a-z])(?=.*?[0-9]).{6,}$';
    final regex = RegExp(passwordPattern);

    return regex.hasMatch(this);
  }

  bool isValidPhoneNumber() {
    // phone pattern with country code or not
    const String phonePattern = r'^(?:[+0][1-9])?[0-9]{10}$';
    final regex = RegExp(phonePattern);

    return regex.hasMatch(this);
  }
}
