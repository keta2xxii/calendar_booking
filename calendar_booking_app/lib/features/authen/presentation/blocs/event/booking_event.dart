import 'package:calendar_booking_app/features/authen/data/models/booking_model.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'booking_event.freezed.dart';

@freezed
class BookingEvent with _$BookingEvent {
  const factory BookingEvent.createBooking({
    required Booking booking,
  }) = BookingCreateBookingEvent;

  const factory BookingEvent.removeBooking({
    required Booking booking,
  }) = BookingRemoveBookingEvent;
}
