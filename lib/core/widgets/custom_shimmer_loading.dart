import 'package:flutter/material.dart';
import 'package:shimmer/shimmer.dart';

import 'custom_shimmer_loading_item.dart';

class CustomShimmerLoading extends StatelessWidget {
  const CustomShimmerLoading({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: Column(
        children: [
          Expanded(
            child: Shimmer.fromColors(
              baseColor: Colors.grey.shade300,
              highlightColor: Colors.grey.shade100,
              enabled: true,
              child: ListView.builder(
                itemBuilder: (_, __) => const CustomShimmerLoadingItem(),
                itemCount: 10,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
