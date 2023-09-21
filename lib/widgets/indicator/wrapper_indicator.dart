import 'package:calendar_booking_app/widgets/indicator/app_indicator.dart';
import 'package:flutter/material.dart';

class WrapperIndicator extends StatelessWidget {
  const WrapperIndicator({Key? key, required this.child, required this.loading})
      : super(key: key);

  final Widget child;
  final bool loading;

  @override
  Widget build(BuildContext context) {
    // return faded animation change loading state
    return AnimatedSwitcher(
      duration: const Duration(milliseconds: 300),
      child: loading
          ? const Center(
              child: AppIndicator(),
            )
          : child,
    );
  }
}
