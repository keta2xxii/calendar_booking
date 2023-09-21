import 'package:calendar_booking_app/core/utils/device_util.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

/// Extension for num for responsive design
extension DeviceSizeScale on num {
  /// get vertical scale by device size and text scale factor
  double get width => DeviceUtils.isPhone ? w : this * 1;

  /// get horizontal scale by device size and text scale factor
  double get height => DeviceUtils.isPhone ? h : this * 1;

  /// get radius scale by device size and text scale factor
  double get radius => DeviceUtils.isPhone ? r : this * 1;

  double get size => DeviceUtils.isPhone ? sp : this * 1;
}
