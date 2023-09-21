import 'package:auto_route/auto_route.dart';
import 'package:calendar_booking_app/core/service_locator.dart';
import 'package:calendar_booking_app/extensions/number_extension.dart';
import 'package:calendar_booking_app/services/theme_cache_service.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

abstract class DialogService {
  /// base custom dialog
  void showCustomDialog(BuildContext context, {required Widget child});

  void showConfirmDialog(
    BuildContext context,
    String title,
    String content, {
    String? confirmText,
    String? cancelText,
    Function? onConfirm,
  });

  void showConfirmWithCustomChildDialog(
    BuildContext context,
    String title, {
    required Widget content,
    String? confirmText,
    String? cancelText,
    Function? onConfirm,
  });
}

class DialogServiceImpl implements DialogService {
  @override
  void showConfirmWithCustomChildDialog(
    BuildContext context,
    String title, {
    required Widget content,
    String? confirmText,
    String? cancelText,
    Function? onConfirm,
  }) {
    showCustomDialog(
      context,
      barrierDismissible: false,
      child: Align(
        alignment: Alignment.center,
        child: Container(
          margin: EdgeInsets.symmetric(horizontal: 24.width),
          decoration: BoxDecoration(
            color: Theme.of(context).colorScheme.background,
            borderRadius: BorderRadius.circular(12.radius),
          ),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Container(
                width: double.infinity,
                decoration: BoxDecoration(
                  color: Theme.of(context).colorScheme.primary,
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(12.radius),
                    topRight: Radius.circular(12.radius),
                  ),
                ),
                child: Padding(
                  padding: EdgeInsets.symmetric(
                    horizontal: 16.width,
                    vertical: 12.height,
                  ),
                  child: Text(
                    title,
                    style: Theme.of(context).textTheme.titleMedium,
                    textAlign: TextAlign.center,
                  ),
                ),
              ),
              16.height.verticalSpace,
              content,
              16.height.verticalSpace,
              // horizontal divider
              Container(
                height: 0.5,
                color: Theme.of(context).colorScheme.primary,
              ),
              IntrinsicHeight(
                child: Row(
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    Expanded(
                      child: GestureDetector(
                        onTap: () {
                          context.router.pop();
                        },
                        child: Container(
                          padding: EdgeInsets.symmetric(vertical: 12.height),
                          child: Text(
                            cancelText ?? tr('cancel'),
                            style: Theme.of(context).textTheme.titleMedium,
                            textAlign: TextAlign.center,
                          ),
                        ),
                      ),
                    ),
                    8.width.horizontalSpace,
                    // vertical divider
                    Container(
                      width: 0.5,
                      color: Theme.of(context).colorScheme.primary,
                    ),
                    8.width.horizontalSpace,
                    Expanded(
                      child: GestureDetector(
                        onTap: () {
                          context.router.pop();
                          if (onConfirm != null) {
                            onConfirm();
                          }
                        },
                        child: Container(
                          padding: EdgeInsets.symmetric(vertical: 12.height),
                          child: Text(
                            confirmText ?? tr('confirm'),
                            style: Theme.of(context).textTheme.titleMedium,
                            textAlign: TextAlign.center,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  @override
  void showConfirmDialog(
    BuildContext context,
    String title,
    String content, {
    String? confirmText,
    String? cancelText,
    Function? onConfirm,
  }) {
    showCustomDialog(
      context,
      barrierDismissible: false,
      child: Align(
        alignment: Alignment.center,
        child: Container(
          margin: EdgeInsets.symmetric(horizontal: 24.width),
          decoration: BoxDecoration(
            color: Theme.of(context).colorScheme.background,
            borderRadius: BorderRadius.circular(12.radius),
          ),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Container(
                width: double.infinity,
                decoration: BoxDecoration(
                  color: Theme.of(context).colorScheme.primary,
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(12.radius),
                    topRight: Radius.circular(12.radius),
                  ),
                ),
                child: Padding(
                  padding: EdgeInsets.symmetric(
                    horizontal: 16.width,
                    vertical: 12.height,
                  ),
                  child: Text(
                    title,
                    style: Theme.of(context).textTheme.titleMedium,
                    textAlign: TextAlign.center,
                  ),
                ),
              ),
              16.height.verticalSpace,
              Text(
                content,
                style: Theme.of(context).textTheme.bodyMedium,
              ),
              16.height.verticalSpace,
              // horizontal divider
              Container(
                height: 0.5,
                color: Theme.of(context).colorScheme.primary,
              ),
              IntrinsicHeight(
                child: Row(
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    Expanded(
                      child: GestureDetector(
                        onTap: () {
                          context.router.pop();
                        },
                        child: Container(
                          padding: EdgeInsets.symmetric(vertical: 12.height),
                          child: Text(
                            cancelText ?? tr('cancel'),
                            style: Theme.of(context).textTheme.titleMedium,
                            textAlign: TextAlign.center,
                          ),
                        ),
                      ),
                    ),
                    8.width.horizontalSpace,
                    // vertical divider
                    Container(
                      width: 0.5,
                      color: Theme.of(context).colorScheme.primary,
                    ),
                    8.width.horizontalSpace,
                    Expanded(
                      child: GestureDetector(
                        onTap: () {
                          context.router.pop();
                          if (onConfirm != null) {
                            onConfirm();
                          }
                        },
                        child: Container(
                          padding: EdgeInsets.symmetric(vertical: 12.height),
                          child: Text(
                            confirmText ?? tr('confirm'),
                            style: Theme.of(context).textTheme.titleMedium,
                            textAlign: TextAlign.center,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  @override
  void showCustomDialog(
    BuildContext context, {
    required Widget child,
    bool barrierDismissible = true,
  }) {
    showGeneralDialog(
      context: context,
      barrierLabel: '',
      barrierDismissible: barrierDismissible,
      barrierColor: serviceLocator<ThemeCacheService>().isDarkMode(context)
          ? Colors.white.withOpacity(0.2)
          : Colors.black.withOpacity(0.3),
      transitionDuration: const Duration(milliseconds: 200),
      pageBuilder: (_, __, ___) {
        return child;
      },
      transitionBuilder: (_, anim, __, child) {
        Tween<Offset> tween;
        if (anim.status == AnimationStatus.reverse) {
          tween = Tween(begin: const Offset(-1, 0), end: Offset.zero);
        } else {
          tween = Tween(begin: const Offset(1, 0), end: Offset.zero);
        }

        return SlideTransition(
          position: tween.animate(anim),
          child: FadeTransition(
            opacity: anim,
            child: child,
          ),
        );
      },
    );
  }
}
