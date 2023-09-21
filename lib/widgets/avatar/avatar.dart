import 'package:cached_network_image/cached_network_image.dart';
import 'package:calendar_booking_app/extensions/number_extension.dart';
import 'package:calendar_booking_app/widgets/indicator/app_indicator.dart';
import 'package:flutter/material.dart';

class Avatar extends StatelessWidget {
  const Avatar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CachedNetworkImage(
      width: 100.width,
      height: 100.width,
      imageUrl:
          'https://i.pinimg.com/originals/49/3f/a0/493fa0f13970ab3ef29375669f670451.jpg',
      imageBuilder: (context, imageProvider) => CircleAvatar(
        backgroundImage: imageProvider,
        radius: 50,
      ),
      placeholder: (context, url) => const Center(
        child: AppIndicator(),
      ),
      errorWidget: (context, url, error) => const Icon(Icons.error),
    );
  }
}
