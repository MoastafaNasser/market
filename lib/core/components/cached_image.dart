import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'custom_circular_indicator.dart';
class cachedImage extends StatelessWidget {
  const cachedImage({
    super.key,
    required this.ImageUrl,
  });
  final String ImageUrl;
  @override
  Widget build(BuildContext context) {
    return CachedNetworkImage(
      imageUrl: ImageUrl,
      placeholder: (context, url) => SizedBox(
        height: 200,
        child: customCircularIndicator(),
      ),
      errorWidget: (context, url, error) => Icon(Icons.error),
    );
  }
}

