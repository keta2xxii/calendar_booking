import 'package:freezed_annotation/freezed_annotation.dart';

part 'booking_state.freezed.dart';

@freezed
class BookingState with _$BookingState {
  const factory BookingState.initial() = BookingInitialState;

  const factory BookingState.loading() = BookingLoadingState;

  const factory BookingState.addBookingSuccess() =
      BookingAddBookingSuccessState;

  const factory BookingState.removeBookingSuccess() =
      BookingRemoveBookingSuccessState;

  const factory BookingState.error({required String errorMessage}) =
      BookingErrorState;
}
