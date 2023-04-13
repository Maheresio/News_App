import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:provider/provider.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

import '../../../../core/utils/app_colors.dart';
import '../../../../manager/news_provider.dart';
import '../../managers/breaking_news_cubit/breaking_news_cubit.dart';



class CustomAnimatedDots extends StatelessWidget {
  const CustomAnimatedDots({super.key});

  @override
  Widget build(BuildContext context) {
    final blocData = BlocProvider.of<BreakingNewsCubit>(context, listen: false);
    return Consumer<NewsProvider>(
      builder: ((context, value, _) {
        if (blocData.breakingNewsList.isEmpty) {
          return const SizedBox();
        }
        return AnimatedSmoothIndicator(
          activeIndex: value.index,
          count: 6,
          effect: WormEffect(
            dotColor: AppColors.kDotColor,
            activeDotColor: Theme.of(context).primaryColor,
            dotWidth: 10.w,
            dotHeight: 8.h,
          ),
        );
      }),
    );
  }
}
