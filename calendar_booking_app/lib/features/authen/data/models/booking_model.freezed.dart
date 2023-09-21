// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'booking_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

Booking _$BookingFromJson(Map<String, dynamic> json) {
  return _Booking.fromJson(json);
}

/// @nodoc
mixin _$Booking {
  int get hour => throw _privateConstructorUsedError;
  int get seat => throw _privateConstructorUsedError;
  int get minutes => throw _privateConstructorUsedError;
  DateTime get start => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $BookingCopyWith<Booking> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BookingCopyWith<$Res> {
  factory $BookingCopyWith(Booking value, $Res Function(Booking) then) =
      _$BookingCopyWithImpl<$Res, Booking>;
  @useResult
  $Res call({int hour, int seat, int minutes, DateTime start});
}

/// @nodoc
class _$BookingCopyWithImpl<$Res, $Val extends Booking>
    implements $BookingCopyWith<$Res> {
  _$BookingCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? hour = null,
    Object? seat = null,
    Object? minutes = null,
    Object? start = null,
  }) {
    return _then(_value.copyWith(
      hour: null == hour
          ? _value.hour
          : hour // ignore: cast_nullable_to_non_nullable
              as int,
      seat: null == seat
          ? _value.seat
          : seat // ignore: cast_nullable_to_non_nullable
              as int,
      minutes: null == minutes
          ? _value.minutes
          : minutes // ignore: cast_nullable_to_non_nullable
              as int,
      start: null == start
          ? _value.start
          : start // ignore: cast_nullable_to_non_nullable
              as DateTime,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_BookingCopyWith<$Res> implements $BookingCopyWith<$Res> {
  factory _$$_BookingCopyWith(
          _$_Booking value, $Res Function(_$_Booking) then) =
      __$$_BookingCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int hour, int seat, int minutes, DateTime start});
}

/// @nodoc
class __$$_BookingCopyWithImpl<$Res>
    extends _$BookingCopyWithImpl<$Res, _$_Booking>
    implements _$$_BookingCopyWith<$Res> {
  __$$_BookingCopyWithImpl(_$_Booking _value, $Res Function(_$_Booking) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? hour = null,
    Object? seat = null,
    Object? minutes = null,
    Object? start = null,
  }) {
    return _then(_$_Booking(
      hour: null == hour
          ? _value.hour
          : hour // ignore: cast_nullable_to_non_nullable
              as int,
      seat: null == seat
          ? _value.seat
          : seat // ignore: cast_nullable_to_non_nullable
              as int,
      minutes: null == minutes
          ? _value.minutes
          : minutes // ignore: cast_nullable_to_non_nullable
              as int,
      start: null == start
          ? _value.start
          : start // ignore: cast_nullable_to_non_nullable
              as DateTime,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Booking implements _Booking {
  const _$_Booking(
      {required this.hour,
      required this.seat,
      required this.minutes,
      required this.start});

  factory _$_Booking.fromJson(Map<String, dynamic> json) =>
      _$$_BookingFromJson(json);

  @override
  final int hour;
  @override
  final int seat;
  @override
  final int minutes;
  @override
  final DateTime start;

  @override
  String toString() {
    return 'Booking(hour: $hour, seat: $seat, minutes: $minutes, start: $start)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Booking &&
            (identical(other.hour, hour) || other.hour == hour) &&
            (identical(other.seat, seat) || other.seat == seat) &&
            (identical(other.minutes, minutes) || other.minutes == minutes) &&
            (identical(other.start, start) || other.start == start));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, hour, seat, minutes, start);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_BookingCopyWith<_$_Booking> get copyWith =>
      __$$_BookingCopyWithImpl<_$_Booking>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_BookingToJson(
      this,
    );
  }
}

abstract class _Booking implements Booking {
  const factory _Booking(
      {required final int hour,
      required final int seat,
      required final int minutes,
      required final DateTime start}) = _$_Booking;

  factory _Booking.fromJson(Map<String, dynamic> json) = _$_Booking.fromJson;

  @override
  int get hour;
  @override
  int get seat;
  @override
  int get minutes;
  @override
  DateTime get start;
  @override
  @JsonKey(ignore: true)
  _$$_BookingCopyWith<_$_Booking> get copyWith =>
      throw _privateConstructorUsedError;
}
