import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';

import '../../../../core/utils/app_router.dart';
import '../../../../core/utils/app_strings.dart';
import 'breaking_news_slider.dart';
import 'custom_animated_dots.dart';
import 'custom_list_view_header.dart';

class BreakingNewsSection extends StatelessWidget {
  const BreakingNewsSection({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 16.w),
          child: CustomListViewHeader(
            headerText: AppStrings.kBreakingNews,
            onPressed: () {
              GoRouter.of(context).push(AppRouter.kViewAllView,
                  extra: AppStrings.kBreakingNews);
            },
          ),
        ),
        SizedBox(
          height: 8.h,
        ),
        const BreakingNewsSlider(),
        SizedBox(
          height: 12.h,
        ),
        const CustomAnimatedDots(),
      ],
    );
  }
}
