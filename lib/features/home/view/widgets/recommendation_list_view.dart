import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';
import 'package:news_app/core/widgets/featured_list_view_item.dart';

import '../../../../core/utils/app_router.dart';
import '../../../../core/widgets/custom_progress_indicator.dart';
import '../../../../core/widgets/error_data_widget.dart';
import '../../managers/recommendation_news_cubit/recommendation_news_cubit.dart';

class RecommendationListView extends StatelessWidget {
  const RecommendationListView({super.key, required this.itemCount});

  final int itemCount;

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<RecommendationNewsCubit, RecommendationNewsState>(
        builder: ((context, state) {
      if (state is RecommendationNewsFailure) {
        return const ErrorDataWidget();
      }
      if (state is RecommendationNewsSuccess) {
        return Expanded(
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 16.w),
            child: ListView.separated(
              physics: const BouncingScrollPhysics(),
              itemBuilder: (context, index) => InkWell(
                onTap: () => GoRouter.of(context).push(
                  AppRouter.kNewsDetailsView,
                  extra: state.recommendationList.elementAt(index),
                ),
                child: FeaturedListViewItem(
                    newsItem: state.recommendationList.elementAt(index)),
              ),
              itemCount: itemCount,
              scrollDirection: Axis.vertical,
              separatorBuilder: (context, index) => SizedBox(
                height: 12.h,
              ),
            ),
          ),
        );
      }
      return const CustomProgressIndicator();
    }));
  }
}
