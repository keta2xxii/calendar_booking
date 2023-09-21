import 'package:easy_localization/easy_localization.dart';

extension DateTimeExtension on DateTime {
  // get date with format dd/MM/yyyy, ex: 01/01/2021
  String get dateSlash => DateFormat('dd/MM/yyyy').format(this);

  // get date with format HH:mm dd/MM/yyyy
  String get dateTime => DateFormat('HH:mm dd MMMM yyyy').format(this);

  // get date with format HH:mm
  String get time => DateFormat('HH:mm').format(this);

  // convert to VN timezone
  DateTime get toVNTimeZone => toUtc().add(const Duration(hours: 7));
}
