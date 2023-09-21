import 'package:cached_network_image/cached_network_image.dart';
import 'package:calendar_booking_app/widgets/indicator/app_indicator.dart';
import 'package:flutter/material.dart';

class BaseNetworkImage extends StatelessWidget {
  const BaseNetworkImage({
    Key? key,
    required this.imageUrl,
    this.width,
    this.height,
    this.fit = BoxFit.cover,
    this.radius = 0,
  }) : super(key: key);

  final String imageUrl;
  final double? width;
  final double? height;
  final double radius;
  final BoxFit fit;

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(radius),
      child: CachedNetworkImage(
        imageUrl: imageUrl,
        placeholder: (context, url) => const Center(
          child: AppIndicator(),
        ),
        errorWidget: (context, url, error) => const Icon(Icons.error),
        width: width,
        height: height,
        fit: fit,
      ),
    );
  }
}
