import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'breaking_news_slider.dart';
import 'custom_animated_dots.dart';
import 'recommendation_list_view.dart';

import '../../core/utils/app_strings.dart';
import 'custom_list_view_header.dart';
import 'custom_home_app_bar.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Padding(
      padding: EdgeInsets.symmetric(vertical: 16.h),
      child: Column(
        children: [
          const CustomHomeAppBar(),
          SizedBox(
            height: 16.h,
          ),
          CustomListViewHeader(
            headerText: AppStrings.kBreakingNews,
            onPressed: () {},
          ),
          SizedBox(
            height: 8.h,
          ),
          const BreakingNewsSlider(),
          SizedBox(
            height: 12.h,
          ),
          const CustomAnimatedDots(),
          SizedBox(
            height: 16.h,
          ),
          CustomListViewHeader(
            headerText: AppStrings.kRecommendation,
            onPressed: () {},
          ),
          SizedBox(
            height: 8.h,
          ),
          const RecommendationListView(),
        ],
      ),
    ));
  }
}
