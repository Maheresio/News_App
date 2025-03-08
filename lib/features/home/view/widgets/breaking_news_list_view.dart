import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';

import '../../../../core/utils/app_router.dart';
import '../../../../core/widgets/custom_shimmer_loading.dart';
import '../../../../core/widgets/error_data_widget.dart';
import '../../../../core/widgets/featured_list_view_item.dart';
import '../../managers/breaking_news_cubit/breaking_news_cubit.dart';

class BreakingNewsListView extends StatelessWidget {
  const BreakingNewsListView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<BreakingNewsCubit, BreakingNewsState>(
      builder: ((context, state) {
        if (state is BreakingNewsFailure) {
          return const ErrorDataWidget();
        }
        if (state is BreakingNewsSuccess) {
          return Expanded(
            child: ListView.separated(
              physics: const BouncingScrollPhysics(),
              itemBuilder: (context, index) => InkWell(
                onTap: () => GoRouter.of(context).push(
                  AppRouter.kNewsDetailsView,
                  extra: state.breakingNewsList.elementAt(index),
                ),
                child: FeaturedListViewItem(
                  newsItem: state.breakingNewsList.elementAt(index),
                ),
              ),
              itemCount: state.breakingNewsList.length,
              scrollDirection: Axis.vertical,
              separatorBuilder: (context, index) => SizedBox(
                height: 12.h,
              ),
            ),
          );
        }

        return const Expanded(child: CustomShimmerLoading());
      }),
    );
  }
}
