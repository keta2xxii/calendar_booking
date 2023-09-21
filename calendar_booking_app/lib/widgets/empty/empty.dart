import 'package:calendar_booking_app/extensions/number_extension.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

// empty widget with default icon and text
class Empty extends StatelessWidget {
  const Empty({
    Key? key,
    this.icon,
    this.text,
  }) : super(key: key);

  final Widget? icon;
  final Widget? text;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        icon ??
            Icon(
              CupertinoIcons.folder_open,
              size: 80.width,
            ),
        8.height.verticalSpace,
        text ?? Text(tr('empty')),
      ],
    );
  }
}
