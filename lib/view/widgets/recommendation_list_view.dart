import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:news_app/manager/home_provider.dart';
import 'package:news_app/view/widgets/recommendation_list_view_item.dart';
import 'package:provider/provider.dart';

class RecommendationListView extends StatelessWidget {
  const RecommendationListView({super.key});

  @override
  Widget build(BuildContext context) {
    final providerData = Provider.of<HomeProvider>(context, listen: false);
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
