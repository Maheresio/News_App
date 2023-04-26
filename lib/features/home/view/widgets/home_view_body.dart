import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'breaking_news_section.dart';
import 'custom_home_app_bar.dart';
import 'recommendation_news_section.dart';

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
            const BreakingNewsSection(),
            SizedBox(
              height: 16.h,
            ),
            const RecommendationNewsSection(),
          ],
        ),
      ),
    );
  }
}
