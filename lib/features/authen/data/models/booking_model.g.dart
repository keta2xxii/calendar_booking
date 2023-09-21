// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'booking_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Booking _$$_BookingFromJson(Map<String, dynamic> json) => _$_Booking(
      hour: json['hour'] as int,
      seat: json['seat'] as int,
      minutes: json['minutes'] as int,
      start: DateTime.parse(json['start'] as String),
    );

Map<String, dynamic> _$$_BookingToJson(_$_Booking instance) =>
    <String, dynamic>{
      'hour': instance.hour,
      'seat': instance.seat,
      'minutes': instance.minutes,
      'start': instance.start.toIso8601String(),
    };
