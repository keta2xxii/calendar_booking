import 'package:auto_route/auto_route.dart';
import 'package:calendar_booking_app/core/service_locator.dart';
import 'package:calendar_booking_app/features/authen/data/models/booking_model.dart';
import 'package:calendar_booking_app/features/authen/presentation/blocs/bloc/booking_bloc.dart';
import 'package:calendar_booking_app/features/authen/presentation/blocs/event/booking_event.dart';
import 'package:calendar_booking_app/features/authen/presentation/blocs/state/booking_state.dart';
import 'package:calendar_booking_app/services/toast_service.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_native_splash/flutter_native_splash.dart';

@RoutePage()
class SplashPage extends StatefulWidget {
  const SplashPage({Key? key}) : super(key: key);

  @override
  State<SplashPage> createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage> {
  @override
  void initState() {
    FlutterNativeSplash.remove();
    super.initState();
  }

  ScrollController controller = ScrollController();
  List<Booking> positionBooking = [];

  void _onCreateBooking({
    required Offset localOffset,
    required int hour,
    required int seat,
  }) {
    Booking model = Booking(
      hour: hour,
      seat: seat,
      minutes: (localOffset.dx ~/ 5) * 5,
      start: DateTime(
        DateTime.now().year,
        DateTime.now().month,
        DateTime.now().day,
        hour,
        (localOffset.dx ~/ 10) * 5,
      ),
    );
    context.read<BookingBloc>().add(
          BookingEvent.createBooking(
            booking: model,
          ),
        );
  }

  void _onRemoveBooking({required Booking model}) {
    context.read<BookingBloc>().add(
          BookingEvent.removeBooking(
            booking: model,
          ),
        );
  }

  String getBookingTitle(Booking model) {
    return '${DateFormat('HH:mm').format(model.start)} - ${DateFormat('HH:mm').format(
      model.start.add(
        const Duration(
          hours: 2,
        ),
      ),
    )} - Seat ${model.seat + 1}';
  }

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<BookingBloc, BookingState>(
      listener: (context, state) {
        if (state is BookingErrorState) {
          serviceLocator<ToastService>().showError(state.errorMessage);
        }
      },
      builder: (context, state) {
        return Scaffold(
          body: SafeArea(
            child: SingleChildScrollView(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      ...List.generate(
                          41,
                          (index) => Container(
                                height: 40,
                                width: 60,
                                decoration: BoxDecoration(
                                  color: Colors.white,
                                  border: Border.all(
                                    color: Colors.black26,
                                  ),
                                ),
                                child: Center(
                                  child: Text(
                                    index == 0 ? '' : 'Seat $index',
                                  ),
                                ),
                              )),
                    ],
                  ),
                  Expanded(
                    child: SingleChildScrollView(
                      physics: const ClampingScrollPhysics(),
                      scrollDirection: Axis.horizontal,
                      child: Stack(
                        children: [
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              SingleChildScrollView(
                                scrollDirection: Axis.horizontal,
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    ...List.generate(
                                        24,
                                        (index) => Container(
                                              height: 40,
                                              width: 120,
                                              decoration: BoxDecoration(
                                                color: Colors.white,
                                                border: Border.all(
                                                  color: Colors.black26,
                                                ),
                                              ),
                                              child: Center(
                                                child: Text(
                                                  DateFormat('HH:mm').format(
                                                    DateTime(
                                                      DateTime.now().year,
                                                      DateTime.now().month,
                                                      DateTime.now().day,
                                                      index,
                                                      0,
                                                    ),
                                                  ),
                                                ),
                                              ),
                                            )),
                                  ],
                                ),
                              ),
                              ...List.generate(
                                40,
                                (seat) => Row(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    ...List.generate(
                                      24,
                                      (hour) => GestureDetector(
                                        onTapUp: (details) {
                                          _onCreateBooking(
                                            localOffset: details.localPosition,
                                            hour: hour,
                                            seat: seat,
                                          );
                                        },
                                        child: DecoratedBox(
                                          decoration: BoxDecoration(
                                            color: Colors.white,
                                            border: Border.all(
                                              color: Colors.black26,
                                            ),
                                          ),
                                          child: const SizedBox(
                                            height: 40,
                                            width: 120,
                                          ),
                                        ),
                                      ),
                                    )
                                  ],
                                ),
                              ),
                            ],
                          ),
                          ...context
                              .read<BookingBloc>()
                              .bookings
                              .map((e) => Positioned(
                                    top: (e.seat + 1) * 40 + 4,
                                    left: (e.hour * 120 + e.minutes).toDouble(),
                                    child: InkWell(
                                      onTap: () {
                                        _onRemoveBooking(model: e);
                                      },
                                      child: Container(
                                        decoration: BoxDecoration(
                                          borderRadius: BorderRadius.circular(
                                            4,
                                          ),
                                          color: Colors.orange,
                                        ),
                                        width: 240,
                                        height: 32,
                                        child: Center(
                                          child: Text(
                                            getBookingTitle(e),
                                            style: const TextStyle(
                                              fontWeight: FontWeight.bold,
                                            ),
                                          ),
                                        ),
                                      ),
                                    ),
                                  ))
                        ],
                      ),
                    ),
                  )
                ],
              ),
            ),
          ),
        );
      },
    );
  }
}

/// start 1 = 10, end 1 = 120
/// start 2 = 15, end 2 = 125
///
/// start 2 > end 1 -> pass
/// end 2 < start 1 -> pass
/// 
/// hour start : 1
/// hour start : 2
