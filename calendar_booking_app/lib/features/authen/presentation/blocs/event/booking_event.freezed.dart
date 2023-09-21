// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'booking_event.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$BookingEvent {
  Booking get booking => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Booking booking) createBooking,
    required TResult Function(Booking booking) removeBooking,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(Booking booking)? createBooking,
    TResult? Function(Booking booking)? removeBooking,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Booking booking)? createBooking,
    TResult Function(Booking booking)? removeBooking,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(BookingCreateBookingEvent value) createBooking,
    required TResult Function(BookingRemoveBookingEvent value) removeBooking,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(BookingCreateBookingEvent value)? createBooking,
    TResult? Function(BookingRemoveBookingEvent value)? removeBooking,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(BookingCreateBookingEvent value)? createBooking,
    TResult Function(BookingRemoveBookingEvent value)? removeBooking,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $BookingEventCopyWith<BookingEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BookingEventCopyWith<$Res> {
  factory $BookingEventCopyWith(
          BookingEvent value, $Res Function(BookingEvent) then) =
      _$BookingEventCopyWithImpl<$Res, BookingEvent>;
  @useResult
  $Res call({Booking booking});

  $BookingCopyWith<$Res> get booking;
}

/// @nodoc
class _$BookingEventCopyWithImpl<$Res, $Val extends BookingEvent>
    implements $BookingEventCopyWith<$Res> {
  _$BookingEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? booking = null,
  }) {
    return _then(_value.copyWith(
      booking: null == booking
          ? _value.booking
          : booking // ignore: cast_nullable_to_non_nullable
              as Booking,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $BookingCopyWith<$Res> get booking {
    return $BookingCopyWith<$Res>(_value.booking, (value) {
      return _then(_value.copyWith(booking: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$BookingCreateBookingEventCopyWith<$Res>
    implements $BookingEventCopyWith<$Res> {
  factory _$$BookingCreateBookingEventCopyWith(
          _$BookingCreateBookingEvent value,
          $Res Function(_$BookingCreateBookingEvent) then) =
      __$$BookingCreateBookingEventCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({Booking booking});

  @override
  $BookingCopyWith<$Res> get booking;
}

/// @nodoc
class __$$BookingCreateBookingEventCopyWithImpl<$Res>
    extends _$BookingEventCopyWithImpl<$Res, _$BookingCreateBookingEvent>
    implements _$$BookingCreateBookingEventCopyWith<$Res> {
  __$$BookingCreateBookingEventCopyWithImpl(_$BookingCreateBookingEvent _value,
      $Res Function(_$BookingCreateBookingEvent) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? booking = null,
  }) {
    return _then(_$BookingCreateBookingEvent(
      booking: null == booking
          ? _value.booking
          : booking // ignore: cast_nullable_to_non_nullable
              as Booking,
    ));
  }
}

/// @nodoc

class _$BookingCreateBookingEvent implements BookingCreateBookingEvent {
  const _$BookingCreateBookingEvent({required this.booking});

  @override
  final Booking booking;

  @override
  String toString() {
    return 'BookingEvent.createBooking(booking: $booking)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$BookingCreateBookingEvent &&
            (identical(other.booking, booking) || other.booking == booking));
  }

  @override
  int get hashCode => Object.hash(runtimeType, booking);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$BookingCreateBookingEventCopyWith<_$BookingCreateBookingEvent>
      get copyWith => __$$BookingCreateBookingEventCopyWithImpl<
          _$BookingCreateBookingEvent>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Booking booking) createBooking,
    required TResult Function(Booking booking) removeBooking,
  }) {
    return createBooking(booking);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(Booking booking)? createBooking,
    TResult? Function(Booking booking)? removeBooking,
  }) {
    return createBooking?.call(booking);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Booking booking)? createBooking,
    TResult Function(Booking booking)? removeBooking,
    required TResult orElse(),
  }) {
    if (createBooking != null) {
      return createBooking(booking);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(BookingCreateBookingEvent value) createBooking,
    required TResult Function(BookingRemoveBookingEvent value) removeBooking,
  }) {
    return createBooking(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(BookingCreateBookingEvent value)? createBooking,
    TResult? Function(BookingRemoveBookingEvent value)? removeBooking,
  }) {
    return createBooking?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(BookingCreateBookingEvent value)? createBooking,
    TResult Function(BookingRemoveBookingEvent value)? removeBooking,
    required TResult orElse(),
  }) {
    if (createBooking != null) {
      return createBooking(this);
    }
    return orElse();
  }
}

abstract class BookingCreateBookingEvent implements BookingEvent {
  const factory BookingCreateBookingEvent({required final Booking booking}) =
      _$BookingCreateBookingEvent;

  @override
  Booking get booking;
  @override
  @JsonKey(ignore: true)
  _$$BookingCreateBookingEventCopyWith<_$BookingCreateBookingEvent>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$BookingRemoveBookingEventCopyWith<$Res>
    implements $BookingEventCopyWith<$Res> {
  factory _$$BookingRemoveBookingEventCopyWith(
          _$BookingRemoveBookingEvent value,
          $Res Function(_$BookingRemoveBookingEvent) then) =
      __$$BookingRemoveBookingEventCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({Booking booking});

  @override
  $BookingCopyWith<$Res> get booking;
}

/// @nodoc
class __$$BookingRemoveBookingEventCopyWithImpl<$Res>
    extends _$BookingEventCopyWithImpl<$Res, _$BookingRemoveBookingEvent>
    implements _$$BookingRemoveBookingEventCopyWith<$Res> {
  __$$BookingRemoveBookingEventCopyWithImpl(_$BookingRemoveBookingEvent _value,
      $Res Function(_$BookingRemoveBookingEvent) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? booking = null,
  }) {
    return _then(_$BookingRemoveBookingEvent(
      booking: null == booking
          ? _value.booking
          : booking // ignore: cast_nullable_to_non_nullable
              as Booking,
    ));
  }
}

/// @nodoc

class _$BookingRemoveBookingEvent implements BookingRemoveBookingEvent {
  const _$BookingRemoveBookingEvent({required this.booking});

  @override
  final Booking booking;

  @override
  String toString() {
    return 'BookingEvent.removeBooking(booking: $booking)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$BookingRemoveBookingEvent &&
            (identical(other.booking, booking) || other.booking == booking));
  }

  @override
  int get hashCode => Object.hash(runtimeType, booking);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$BookingRemoveBookingEventCopyWith<_$BookingRemoveBookingEvent>
      get copyWith => __$$BookingRemoveBookingEventCopyWithImpl<
          _$BookingRemoveBookingEvent>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Booking booking) createBooking,
    required TResult Function(Booking booking) removeBooking,
  }) {
    return removeBooking(booking);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(Booking booking)? createBooking,
    TResult? Function(Booking booking)? removeBooking,
  }) {
    return removeBooking?.call(booking);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Booking booking)? createBooking,
    TResult Function(Booking booking)? removeBooking,
    required TResult orElse(),
  }) {
    if (removeBooking != null) {
      return removeBooking(booking);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(BookingCreateBookingEvent value) createBooking,
    required TResult Function(BookingRemoveBookingEvent value) removeBooking,
  }) {
    return removeBooking(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(BookingCreateBookingEvent value)? createBooking,
    TResult? Function(BookingRemoveBookingEvent value)? removeBooking,
  }) {
    return removeBooking?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(BookingCreateBookingEvent value)? createBooking,
    TResult Function(BookingRemoveBookingEvent value)? removeBooking,
    required TResult orElse(),
  }) {
    if (removeBooking != null) {
      return removeBooking(this);
    }
    return orElse();
  }
}

abstract class BookingRemoveBookingEvent implements BookingEvent {
  const factory BookingRemoveBookingEvent({required final Booking booking}) =
      _$BookingRemoveBookingEvent;

  @override
  Booking get booking;
  @override
  @JsonKey(ignore: true)
  _$$BookingRemoveBookingEventCopyWith<_$BookingRemoveBookingEvent>
      get copyWith => throw _privateConstructorUsedError;
}
