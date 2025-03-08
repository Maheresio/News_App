import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:shimmer/shimmer.dart';

import '../utils/app_assets.dart';

class CustomImage extends StatelessWidget {
  const CustomImage({
    super.key,
    required this.imgUrl,
    this.enableEffects = true,
  });
  final String? imgUrl;
  final bool enableEffects;
  @override
  Widget build(BuildContext context) {
    return imgUrl != null
        ? CachedNetworkImage(

            imageUrl: imgUrl!,
            errorWidget: (context, url, error) => Image(
              image: const AssetImage(AppAssets.kPlaceholderImg),
              fit: BoxFit.cover,
              colorBlendMode: enableEffects ? BlendMode.darken : null,
              color: enableEffects ? Colors.black.withOpacity(0.5) : null,
            ),

            
            placeholder: (context, url) => Center(
              child: Shimmer(
                gradient: LinearGradient(
                    colors: [Colors.grey.shade100, Colors.grey.shade300]),
                direction: ShimmerDirection.ltr,
                child: Container(
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(15),
                  ),
                ),
              ),
            ),
            fit: BoxFit.cover,
            colorBlendMode: enableEffects ? BlendMode.darken : null,
            color: enableEffects ? Colors.black.withOpacity(0.5) : null,
          )
        : Image.asset(
            AppAssets.kPlaceholderImg,
            fit: BoxFit.cover,
            colorBlendMode: enableEffects ? BlendMode.darken : null,
            color: enableEffects ? Colors.black.withOpacity(0.5) : null,
          );
  }
}
