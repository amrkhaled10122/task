import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';

// [WCacheNetworkImage] is Custom widget for a cached network image
class WCacheNetworkImage extends StatelessWidget {
  const WCacheNetworkImage({
    required this.imageUrl,
    required this.height,
    required this.width,
    required this.radius,
    this.fit,
    this.color,
    this.errorSchoolImage,
    this.isProfilePicture = false,
    this.isGroup = false,
    this.isService,
    Key? key,
  }) : super(key: key);

  final double height;
  final double width;
  final double radius;
  final String imageUrl;
  final BoxFit? fit;
  final bool isProfilePicture;
  final bool isGroup;
  final Color? color;
  final bool? isService;
  final Widget? errorSchoolImage;

  @override
  Widget build(BuildContext context) {
    return CachedNetworkImage(
      imageUrl: imageUrl,
      width: width,
      height: height,
      fadeInDuration: const Duration(milliseconds: 200),
      fadeOutDuration: const Duration(milliseconds: 200),
      imageBuilder: (BuildContext context, ImageProvider<Object> imageProvider) => _buildImageContainer(imageProvider),
    );
  }

  Widget _buildImageContainer(ImageProvider<Object> imageProvider) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(radius),
        image: DecorationImage(
          image: imageProvider,
          fit: fit ?? BoxFit.fill,
          colorFilter: _getColorFilter(),
        ),
      ),
    );
  }

  ColorFilter? _getColorFilter() {
    return color == null ? null : ColorFilter.mode(color!, BlendMode.darken);
  }
}
