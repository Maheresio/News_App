import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:news_app/features/home/managers/recommendation_news_cubit/recommendation_news_cubit.dart';
import 'package:news_app/features/home/view/widgets/breaking_news_list_view.dart';
import 'package:news_app/features/home/view/widgets/recommendation_list_view.dart';

import '../../../../core/helpers/custom_home_app_bar_icon.dart';
import '../../../../core/utils/app_strings.dart';

class ViewAllViewBody extends StatelessWidget {
  const ViewAllViewBody({super.key, required this.listType});

  final String listType;
  @override
  Widget build(BuildContext context) {
    final blocData =
        BlocProvider.of<RecommendationNewsCubit>(context, listen: false);
    return SafeArea(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 16.w),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  height: 16.h,
                ),
                customHomeAppBarIcon(
                    icon: CupertinoIcons.chevron_left,
                    heroTag: 'btn6',
                    onPressed: () => Navigator.of(context).pop()),
                SizedBox(
                  height: 8.h,
                ),
                Text(
                  listType,
                  style: Theme.of(context).textTheme.headlineMedium!.copyWith(
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                      ),
                ),
                const Divider(),
                SizedBox(
                  height: 16.h,
                ),
              ],
            ),
          ),
          listType == AppStrings.kRecommendation
              ? RecommendationListView(
                  itemCount: blocData.recommendationList.length)
              : const BreakingNewsListView(),
        ],
      ),
    );
  }
}
