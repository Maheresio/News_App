import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:provider/provider.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

import '../../core/utils/app_colors.dart';
import '../../manager/home_provider.dart';

class CustomAnimatedDots extends StatelessWidget {
  const CustomAnimatedDots({super.key});

  @override
  Widget build(BuildContext context) {
    final providerData = Provider.of<HomeProvider>(context, listen: false);

    return Consumer<HomeProvider>(
      builder: ((context, value, _) {
        return AnimatedSmoothIndicator(
          activeIndex: value.index,
          count: providerData.breakingNewsList.length,
          effect: WormEffect(
              dotColor: AppColors.kDotColor,
              activeDotColor: Theme.of(context).primaryColor,
              dotWidth: 10.w,
              dotHeight: 8.h),
        );
      }),
    );
  }
}
