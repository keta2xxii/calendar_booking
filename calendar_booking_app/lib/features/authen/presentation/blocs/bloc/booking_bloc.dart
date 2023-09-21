import 'package:calendar_booking_app/features/authen/data/models/booking_model.dart';
import 'package:calendar_booking_app/features/authen/presentation/blocs/event/booking_event.dart';
import 'package:calendar_booking_app/features/authen/presentation/blocs/state/booking_state.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class BookingBloc extends Bloc<BookingEvent, BookingState> {
  List<Booking> bookings = [];
  BookingBloc() : super(const BookingState.initial()) {
    on<BookingCreateBookingEvent>((event, emit) {
      emit(const BookingState.loading());
      bool canAdd = true;
      int bookingStartInMinutes =
          event.booking.hour * 60 + event.booking.minutes;
      int bookingEndInMinutes =
          (event.booking.hour + 2) * 60 + event.booking.minutes;
      print(1);
      if (bookings.isEmpty) {
        bookings.add(event.booking);
        emit(
          const BookingState.addBookingSuccess(),
        );
      } else {
        for (var i = 0; i < bookings.length; i++) {
          if (bookings[i].seat == event.booking.seat) {
            int elementStartInMinutes =
                bookings[i].hour * 60 + bookings[i].minutes;
            int elementEndInMinutes =
                (bookings[i].hour + 2) * 60 + bookings[i].minutes;

            if (bookingStartInMinutes >= elementStartInMinutes &&
                bookingStartInMinutes <= elementEndInMinutes) {
              print(23);
              canAdd = false;
            } else if (bookingEndInMinutes >= elementStartInMinutes &&
                bookingEndInMinutes <= elementEndInMinutes) {
              print(34);
              canAdd = false;
            }
          }
        }
        if (canAdd) {
          bookings.add(event.booking);
          emit(
            const BookingState.addBookingSuccess(),
          );
        } else {
          emit(
            const BookingState.error(errorMessage: 'Can\'t create booking'),
          );
        }
      }
    });

    on<BookingRemoveBookingEvent>((event, emit) {
      emit(const BookingState.loading());
      bookings.remove(event.booking);
      emit(const BookingState.removeBookingSuccess());
    });
  }
}
