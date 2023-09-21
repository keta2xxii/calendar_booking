// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'booking_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$BookingState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function() addBookingSuccess,
    required TResult Function() removeBookingSuccess,
    required TResult Function(String errorMessage) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function()? addBookingSuccess,
    TResult? Function()? removeBookingSuccess,
    TResult? Function(String errorMessage)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function()? addBookingSuccess,
    TResult Function()? removeBookingSuccess,
    TResult Function(String errorMessage)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(BookingInitialState value) initial,
    required TResult Function(BookingLoadingState value) loading,
    required TResult Function(BookingAddBookingSuccessState value)
        addBookingSuccess,
    required TResult Function(BookingRemoveBookingSuccessState value)
        removeBookingSuccess,
    required TResult Function(BookingErrorState value) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(BookingInitialState value)? initial,
    TResult? Function(BookingLoadingState value)? loading,
    TResult? Function(BookingAddBookingSuccessState value)? addBookingSuccess,
    TResult? Function(BookingRemoveBookingSuccessState value)?
        removeBookingSuccess,
    TResult? Function(BookingErrorState value)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(BookingInitialState value)? initial,
    TResult Function(BookingLoadingState value)? loading,
    TResult Function(BookingAddBookingSuccessState value)? addBookingSuccess,
    TResult Function(BookingRemoveBookingSuccessState value)?
        removeBookingSuccess,
    TResult Function(BookingErrorState value)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BookingStateCopyWith<$Res> {
  factory $BookingStateCopyWith(
          BookingState value, $Res Function(BookingState) then) =
      _$BookingStateCopyWithImpl<$Res, BookingState>;
}

/// @nodoc
class _$BookingStateCopyWithImpl<$Res, $Val extends BookingState>
    implements $BookingStateCopyWith<$Res> {
  _$BookingStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$BookingInitialStateCopyWith<$Res> {
  factory _$$BookingInitialStateCopyWith(_$BookingInitialState value,
          $Res Function(_$BookingInitialState) then) =
      __$$BookingInitialStateCopyWithImpl<$Res>;
}

/// @nodoc
class __$$BookingInitialStateCopyWithImpl<$Res>
    extends _$BookingStateCopyWithImpl<$Res, _$BookingInitialState>
    implements _$$BookingInitialStateCopyWith<$Res> {
  __$$BookingInitialStateCopyWithImpl(
      _$BookingInitialState _value, $Res Function(_$BookingInitialState) _then)
      : super(_value, _then);
}

/// @nodoc

class _$BookingInitialState implements BookingInitialState {
  const _$BookingInitialState();

  @override
  String toString() {
    return 'BookingState.initial()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$BookingInitialState);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function() addBookingSuccess,
    required TResult Function() removeBookingSuccess,
    required TResult Function(String errorMessage) error,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function()? addBookingSuccess,
    TResult? Function()? removeBookingSuccess,
    TResult? Function(String errorMessage)? error,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function()? addBookingSuccess,
    TResult Function()? removeBookingSuccess,
    TResult Function(String errorMessage)? error,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(BookingInitialState value) initial,
    required TResult Function(BookingLoadingState value) loading,
    required TResult Function(BookingAddBookingSuccessState value)
        addBookingSuccess,
    required TResult Function(BookingRemoveBookingSuccessState value)
        removeBookingSuccess,
    required TResult Function(BookingErrorState value) error,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(BookingInitialState value)? initial,
    TResult? Function(BookingLoadingState value)? loading,
    TResult? Function(BookingAddBookingSuccessState value)? addBookingSuccess,
    TResult? Function(BookingRemoveBookingSuccessState value)?
        removeBookingSuccess,
    TResult? Function(BookingErrorState value)? error,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(BookingInitialState value)? initial,
    TResult Function(BookingLoadingState value)? loading,
    TResult Function(BookingAddBookingSuccessState value)? addBookingSuccess,
    TResult Function(BookingRemoveBookingSuccessState value)?
        removeBookingSuccess,
    TResult Function(BookingErrorState value)? error,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class BookingInitialState implements BookingState {
  const factory BookingInitialState() = _$BookingInitialState;
}

/// @nodoc
abstract class _$$BookingLoadingStateCopyWith<$Res> {
  factory _$$BookingLoadingStateCopyWith(_$BookingLoadingState value,
          $Res Function(_$BookingLoadingState) then) =
      __$$BookingLoadingStateCopyWithImpl<$Res>;
}

/// @nodoc
class __$$BookingLoadingStateCopyWithImpl<$Res>
    extends _$BookingStateCopyWithImpl<$Res, _$BookingLoadingState>
    implements _$$BookingLoadingStateCopyWith<$Res> {
  __$$BookingLoadingStateCopyWithImpl(
      _$BookingLoadingState _value, $Res Function(_$BookingLoadingState) _then)
      : super(_value, _then);
}

/// @nodoc

class _$BookingLoadingState implements BookingLoadingState {
  const _$BookingLoadingState();

  @override
  String toString() {
    return 'BookingState.loading()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$BookingLoadingState);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function() addBookingSuccess,
    required TResult Function() removeBookingSuccess,
    required TResult Function(String errorMessage) error,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function()? addBookingSuccess,
    TResult? Function()? removeBookingSuccess,
    TResult? Function(String errorMessage)? error,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function()? addBookingSuccess,
    TResult Function()? removeBookingSuccess,
    TResult Function(String errorMessage)? error,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(BookingInitialState value) initial,
    required TResult Function(BookingLoadingState value) loading,
    required TResult Function(BookingAddBookingSuccessState value)
        addBookingSuccess,
    required TResult Function(BookingRemoveBookingSuccessState value)
        removeBookingSuccess,
    required TResult Function(BookingErrorState value) error,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(BookingInitialState value)? initial,
    TResult? Function(BookingLoadingState value)? loading,
    TResult? Function(BookingAddBookingSuccessState value)? addBookingSuccess,
    TResult? Function(BookingRemoveBookingSuccessState value)?
        removeBookingSuccess,
    TResult? Function(BookingErrorState value)? error,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(BookingInitialState value)? initial,
    TResult Function(BookingLoadingState value)? loading,
    TResult Function(BookingAddBookingSuccessState value)? addBookingSuccess,
    TResult Function(BookingRemoveBookingSuccessState value)?
        removeBookingSuccess,
    TResult Function(BookingErrorState value)? error,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class BookingLoadingState implements BookingState {
  const factory BookingLoadingState() = _$BookingLoadingState;
}

/// @nodoc
abstract class _$$BookingAddBookingSuccessStateCopyWith<$Res> {
  factory _$$BookingAddBookingSuccessStateCopyWith(
          _$BookingAddBookingSuccessState value,
          $Res Function(_$BookingAddBookingSuccessState) then) =
      __$$BookingAddBookingSuccessStateCopyWithImpl<$Res>;
}

/// @nodoc
class __$$BookingAddBookingSuccessStateCopyWithImpl<$Res>
    extends _$BookingStateCopyWithImpl<$Res, _$BookingAddBookingSuccessState>
    implements _$$BookingAddBookingSuccessStateCopyWith<$Res> {
  __$$BookingAddBookingSuccessStateCopyWithImpl(
      _$BookingAddBookingSuccessState _value,
      $Res Function(_$BookingAddBookingSuccessState) _then)
      : super(_value, _then);
}

/// @nodoc

class _$BookingAddBookingSuccessState implements BookingAddBookingSuccessState {
  const _$BookingAddBookingSuccessState();

  @override
  String toString() {
    return 'BookingState.addBookingSuccess()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$BookingAddBookingSuccessState);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function() addBookingSuccess,
    required TResult Function() removeBookingSuccess,
    required TResult Function(String errorMessage) error,
  }) {
    return addBookingSuccess();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function()? addBookingSuccess,
    TResult? Function()? removeBookingSuccess,
    TResult? Function(String errorMessage)? error,
  }) {
    return addBookingSuccess?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function()? addBookingSuccess,
    TResult Function()? removeBookingSuccess,
    TResult Function(String errorMessage)? error,
    required TResult orElse(),
  }) {
    if (addBookingSuccess != null) {
      return addBookingSuccess();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(BookingInitialState value) initial,
    required TResult Function(BookingLoadingState value) loading,
    required TResult Function(BookingAddBookingSuccessState value)
        addBookingSuccess,
    required TResult Function(BookingRemoveBookingSuccessState value)
        removeBookingSuccess,
    required TResult Function(BookingErrorState value) error,
  }) {
    return addBookingSuccess(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(BookingInitialState value)? initial,
    TResult? Function(BookingLoadingState value)? loading,
    TResult? Function(BookingAddBookingSuccessState value)? addBookingSuccess,
    TResult? Function(BookingRemoveBookingSuccessState value)?
        removeBookingSuccess,
    TResult? Function(BookingErrorState value)? error,
  }) {
    return addBookingSuccess?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(BookingInitialState value)? initial,
    TResult Function(BookingLoadingState value)? loading,
    TResult Function(BookingAddBookingSuccessState value)? addBookingSuccess,
    TResult Function(BookingRemoveBookingSuccessState value)?
        removeBookingSuccess,
    TResult Function(BookingErrorState value)? error,
    required TResult orElse(),
  }) {
    if (addBookingSuccess != null) {
      return addBookingSuccess(this);
    }
    return orElse();
  }
}

abstract class BookingAddBookingSuccessState implements BookingState {
  const factory BookingAddBookingSuccessState() =
      _$BookingAddBookingSuccessState;
}

/// @nodoc
abstract class _$$BookingRemoveBookingSuccessStateCopyWith<$Res> {
  factory _$$BookingRemoveBookingSuccessStateCopyWith(
          _$BookingRemoveBookingSuccessState value,
          $Res Function(_$BookingRemoveBookingSuccessState) then) =
      __$$BookingRemoveBookingSuccessStateCopyWithImpl<$Res>;
}

/// @nodoc
class __$$BookingRemoveBookingSuccessStateCopyWithImpl<$Res>
    extends _$BookingStateCopyWithImpl<$Res, _$BookingRemoveBookingSuccessState>
    implements _$$BookingRemoveBookingSuccessStateCopyWith<$Res> {
  __$$BookingRemoveBookingSuccessStateCopyWithImpl(
      _$BookingRemoveBookingSuccessState _value,
      $Res Function(_$BookingRemoveBookingSuccessState) _then)
      : super(_value, _then);
}

/// @nodoc

class _$BookingRemoveBookingSuccessState
    implements BookingRemoveBookingSuccessState {
  const _$BookingRemoveBookingSuccessState();

  @override
  String toString() {
    return 'BookingState.removeBookingSuccess()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$BookingRemoveBookingSuccessState);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function() addBookingSuccess,
    required TResult Function() removeBookingSuccess,
    required TResult Function(String errorMessage) error,
  }) {
    return removeBookingSuccess();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function()? addBookingSuccess,
    TResult? Function()? removeBookingSuccess,
    TResult? Function(String errorMessage)? error,
  }) {
    return removeBookingSuccess?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function()? addBookingSuccess,
    TResult Function()? removeBookingSuccess,
    TResult Function(String errorMessage)? error,
    required TResult orElse(),
  }) {
    if (removeBookingSuccess != null) {
      return removeBookingSuccess();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(BookingInitialState value) initial,
    required TResult Function(BookingLoadingState value) loading,
    required TResult Function(BookingAddBookingSuccessState value)
        addBookingSuccess,
    required TResult Function(BookingRemoveBookingSuccessState value)
        removeBookingSuccess,
    required TResult Function(BookingErrorState value) error,
  }) {
    return removeBookingSuccess(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(BookingInitialState value)? initial,
    TResult? Function(BookingLoadingState value)? loading,
    TResult? Function(BookingAddBookingSuccessState value)? addBookingSuccess,
    TResult? Function(BookingRemoveBookingSuccessState value)?
        removeBookingSuccess,
    TResult? Function(BookingErrorState value)? error,
  }) {
    return removeBookingSuccess?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(BookingInitialState value)? initial,
    TResult Function(BookingLoadingState value)? loading,
    TResult Function(BookingAddBookingSuccessState value)? addBookingSuccess,
    TResult Function(BookingRemoveBookingSuccessState value)?
        removeBookingSuccess,
    TResult Function(BookingErrorState value)? error,
    required TResult orElse(),
  }) {
    if (removeBookingSuccess != null) {
      return removeBookingSuccess(this);
    }
    return orElse();
  }
}

abstract class BookingRemoveBookingSuccessState implements BookingState {
  const factory BookingRemoveBookingSuccessState() =
      _$BookingRemoveBookingSuccessState;
}

/// @nodoc
abstract class _$$BookingErrorStateCopyWith<$Res> {
  factory _$$BookingErrorStateCopyWith(
          _$BookingErrorState value, $Res Function(_$BookingErrorState) then) =
      __$$BookingErrorStateCopyWithImpl<$Res>;
  @useResult
  $Res call({String errorMessage});
}

/// @nodoc
class __$$BookingErrorStateCopyWithImpl<$Res>
    extends _$BookingStateCopyWithImpl<$Res, _$BookingErrorState>
    implements _$$BookingErrorStateCopyWith<$Res> {
  __$$BookingErrorStateCopyWithImpl(
      _$BookingErrorState _value, $Res Function(_$BookingErrorState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? errorMessage = null,
  }) {
    return _then(_$BookingErrorState(
      errorMessage: null == errorMessage
          ? _value.errorMessage
          : errorMessage // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$BookingErrorState implements BookingErrorState {
  const _$BookingErrorState({required this.errorMessage});

  @override
  final String errorMessage;

  @override
  String toString() {
    return 'BookingState.error(errorMessage: $errorMessage)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$BookingErrorState &&
            (identical(other.errorMessage, errorMessage) ||
                other.errorMessage == errorMessage));
  }

  @override
  int get hashCode => Object.hash(runtimeType, errorMessage);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$BookingErrorStateCopyWith<_$BookingErrorState> get copyWith =>
      __$$BookingErrorStateCopyWithImpl<_$BookingErrorState>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function() addBookingSuccess,
    required TResult Function() removeBookingSuccess,
    required TResult Function(String errorMessage) error,
  }) {
    return error(errorMessage);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function()? addBookingSuccess,
    TResult? Function()? removeBookingSuccess,
    TResult? Function(String errorMessage)? error,
  }) {
    return error?.call(errorMessage);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function()? addBookingSuccess,
    TResult Function()? removeBookingSuccess,
    TResult Function(String errorMessage)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(errorMessage);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(BookingInitialState value) initial,
    required TResult Function(BookingLoadingState value) loading,
    required TResult Function(BookingAddBookingSuccessState value)
        addBookingSuccess,
    required TResult Function(BookingRemoveBookingSuccessState value)
        removeBookingSuccess,
    required TResult Function(BookingErrorState value) error,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(BookingInitialState value)? initial,
    TResult? Function(BookingLoadingState value)? loading,
    TResult? Function(BookingAddBookingSuccessState value)? addBookingSuccess,
    TResult? Function(BookingRemoveBookingSuccessState value)?
        removeBookingSuccess,
    TResult? Function(BookingErrorState value)? error,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(BookingInitialState value)? initial,
    TResult Function(BookingLoadingState value)? loading,
    TResult Function(BookingAddBookingSuccessState value)? addBookingSuccess,
    TResult Function(BookingRemoveBookingSuccessState value)?
        removeBookingSuccess,
    TResult Function(BookingErrorState value)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class BookingErrorState implements BookingState {
  const factory BookingErrorState({required final String errorMessage}) =
      _$BookingErrorState;

  String get errorMessage;
  @JsonKey(ignore: true)
  _$$BookingErrorStateCopyWith<_$BookingErrorState> get copyWith =>
      throw _privateConstructorUsedError;
}
