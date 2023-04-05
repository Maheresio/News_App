import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';
import 'package:news_app/view/widgets/recommendation_list_view_item.dart';
import '../../core/utils/app_router.dart';
import '../../manager/news_provider.dart';
import 'package:provider/provider.dart';

class RecommendationListView extends StatelessWidget {
  const RecommendationListView({super.key});

  @override
  Widget build(BuildContext context) {
    return Consumer<NewsProvider>(
      builder: (context, value, _) => Expanded(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 16.w),
          child: ListView.separated(
            physics: const BouncingScrollPhysics(),
            itemBuilder: (context, index) => InkWell(
              onTap: () => GoRouter.of(context).push(
                AppRouter.kNewsDetailsView,
                extra: value.recommendationList.elementAt(index),
              ),
              child: RecommendationListViewItem(index: index),
            ),
            itemCount: value.recommendationList.length,
            scrollDirection: Axis.vertical,
            separatorBuilder: (context, index) => SizedBox(
              height: 12.h,
            ),
          ),
        ),
      ),
    );
  }
}
