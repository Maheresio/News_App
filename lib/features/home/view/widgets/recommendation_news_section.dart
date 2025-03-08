import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';

import '../../../../core/utils/app_router.dart';
import '../../../../core/utils/app_strings.dart';
import 'custom_list_view_header.dart';
import 'recommendation_list_view.dart';

class RecommendationNewsSection extends StatelessWidget {
  const RecommendationNewsSection({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 16.w),
      child: Column(
        children: [
          CustomListViewHeader(
            headerText: AppStrings.kRecommendation,
            onPressed: () {
              GoRouter.of(context).push(
                AppRouter.kViewAllView,
                extra: AppStrings.kRecommendation,
              );
            },
          ),
          SizedBox(
            height: 8.h,
          ),
          const Expanded(
            child: RecommendationListView(
              itemCount: 20,
            ),
          ),
        ],
      ),
    );
  }
}
