import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../manager/news_provider.dart';
import 'package:provider/provider.dart';

import 'recommendation_list_view_item.dart';

class RecommendationListView extends StatelessWidget {
  const RecommendationListView({super.key});

  @override
  Widget build(BuildContext context) {
    final providerData = Provider.of<NewsProvider>(context, listen: false);
    return Expanded(
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 16.w),
        child: ListView.separated(
          physics: const BouncingScrollPhysics(),
          itemBuilder: (context, index) =>
              RecommendationListViewItem(index: index),
          itemCount: providerData.recommendationList.length,
          scrollDirection: Axis.vertical,
          separatorBuilder: (context, index) => SizedBox(
            height: 12.h,
          ),
        ),
      ),
    );
  }
}
