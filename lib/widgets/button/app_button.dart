import 'package:calendar_booking_app/extensions/number_extension.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

/// Global App Button
/// Usage: AppButton(label: 'text', onTap: () {},));
class AppButton extends StatelessWidget {
  const AppButton({
    Key? key,
    required this.label,
    required this.onTap,
    this.icon,
    this.isLeading = true,
    this.type = ButtonType.primary,
    this.isFitWidth = false,
    this.hasShadow = true,
    this.color,
    this.radius = 100,
    this.textColor,
  }) : super(key: key);

  /// Label of button
  final String label;

  /// On tap function
  final Function() onTap;

  /// Icon of button
  final Widget? icon;

  /// Is icon leading
  final bool? isLeading;

  /// Type of button
  /// Default is primary
  final ButtonType? type;

  /// Is fit parent width
  final bool? isFitWidth;

  /// Has shadow
  final bool? hasShadow;

  /// Color of button
  final Color? color;

  /// Color of button
  final Color? textColor;

  /// Radius of button, raw number without responsive
  final num? radius;

  @override
  Widget build(BuildContext context) {
    final btnColor = color != null
        ? color!
        : (type == ButtonType.primary
            ? Theme.of(context).colorScheme.primary
            : Theme.of(context).colorScheme.secondary);
    final txtColor = textColor != null
        ? textColor!
        : (type == ButtonType.primary
            ? Theme.of(context).colorScheme.onPrimary
            : Theme.of(context).colorScheme.onSecondary);

    return InkWell(
      onTap: onTap,
      child: Container(
        height: 40.height,
        padding: EdgeInsets.symmetric(
          horizontal: 24.width,
        ),
        decoration: BoxDecoration(
          color: btnColor,
          borderRadius: BorderRadius.all(
            Radius.circular(radius!.radius),
          ),
          boxShadow: hasShadow!
              ? [
                  BoxShadow(
                    color: Theme.of(context)
                        .colorScheme
                        .onPrimary
                        .withOpacity(0.3),
                    blurRadius: 10,
                    offset: const Offset(3, 6),
                  ),
                ]
              : null,
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          mainAxisSize: isFitWidth! ? MainAxisSize.max : MainAxisSize.min,
          children: [
            (isLeading! && icon != null) ? icon! : const SizedBox.shrink(),
            (isLeading! && icon != null)
                ? 8.width.horizontalSpace
                : const SizedBox.shrink(),
            Flexible(
              child: Text(
                label,
                style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                      color: txtColor,
                    ),
                textAlign: TextAlign.center,
                overflow: TextOverflow.ellipsis,
                maxLines: 1,
              ),
            ),
            (!isLeading! && icon != null)
                ? 8.width.horizontalSpace
                : const SizedBox.shrink(),
            (!isLeading! && icon != null) ? icon! : const SizedBox.shrink(),
          ],
        ),
      ),
    );
  }
}

/// Type of button
enum ButtonType {
  primary,
  secondary,
}
