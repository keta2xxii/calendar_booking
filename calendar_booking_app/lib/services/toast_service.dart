import 'package:calendar_booking_app/core/theme.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';

/// Global toast service
abstract class ToastService {
  /// Show info/warning message
  /// Usage: serviceLocator<ToastService>().showInfo(tr('message'));
  void showInfo(String message);

  /// Show success message
  /// Usage: serviceLocator<ToastService>().showSuccess(tr('message'));
  void showSuccess(String message);

  /// Show error message
  /// Usage: serviceLocator<ToastService>().showError(tr('message'));
  void showError(String message);
}

class ToastServiceImpl implements ToastService {
  @override
  void showInfo(String message) {
    Fluttertoast.showToast(
      msg: message,
      toastLength: Toast.LENGTH_LONG,
      gravity: ToastGravity.TOP,
      timeInSecForIosWeb: 3,
      backgroundColor: AppTheme.colorScheme.secondary,
      textColor: AppTheme.colorScheme.onSecondary,
      // backgroundColor: AppTheme.colorScheme.secondary,
      // textColor: AppTheme.colorScheme.onSecondary,
      fontSize: AppTheme.textTheme.bodyMedium!.fontSize,
    );
  }

  @override
  void showSuccess(String message) {
    Fluttertoast.showToast(
      msg: message,
      toastLength: Toast.LENGTH_LONG,
      gravity: ToastGravity.TOP,
      timeInSecForIosWeb: 3,
      backgroundColor: Colors.greenAccent.shade400,
      textColor: Colors.black,
      // backgroundColor: AppTheme.colorScheme.secondary,
      // textColor: AppTheme.colorScheme.onSecondary,
      fontSize: AppTheme.textTheme.bodyMedium!.fontSize,
    );
  }

  @override
  void showError(String message) {
    Fluttertoast.showToast(
      msg: message,
      toastLength: Toast.LENGTH_LONG,
      gravity: ToastGravity.TOP,
      timeInSecForIosWeb: 3,
      backgroundColor: AppTheme.colorScheme.error,
      textColor: AppTheme.colorScheme.onError,
      // backgroundColor: AppTheme.colorScheme.secondary,
      // textColor: AppTheme.colorScheme.onSecondary,
      fontSize: AppTheme.textTheme.bodyMedium!.fontSize,
    );
  }
}
