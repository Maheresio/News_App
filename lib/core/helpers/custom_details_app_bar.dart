import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:provider/provider.dart';

import '../../manager/news_provider.dart';
import '../../view/widgets/custom_blurred_app_bar_icon.dart';
import '../utils/app_strings.dart';

SliverAppBar customDetailsAppBar(BuildContext context,String listType,int index) {
  
      final providerData = Provider.of<NewsProvider>(context, listen: false);

   return SliverAppBar(
      leadingWidth: 58.w,
      collapsedHeight: 60.h,
      leading: Padding(
        padding: EdgeInsetsDirectional.only(start: 15.w),
        child: const CustomBlurredAppBarIcon(
          iconData: CupertinoIcons.chevron_left,
        ),
      ),
      actions: [
        Padding(
          padding: EdgeInsetsDirectional.only(end: 4.w),
          child: const CustomBlurredAppBarIcon(
            iconData: CupertinoIcons.bookmark,
          ),
        ),
        Padding(
          padding: EdgeInsetsDirectional.only(end: 15.w),
          child: const CustomBlurredAppBarIcon(
            iconData: CupertinoIcons.ellipsis,
          ),
        ),
      ],
      pinned: true,
      floating: true,
      expandedHeight: 300.h,
      flexibleSpace: FlexibleSpaceBar(
        background: Stack(
          children: [
            Container(
              width: double.infinity,
              height: 500.h,
              decoration: BoxDecoration(
                color: Colors.white,
                image: DecorationImage(
                  image:  NetworkImage(
                    listType == AppStrings.kBreakingNews
                                  ? providerData.breakingNewsList
                                      .elementAt(index)
                                      .imageUrl
                                  : providerData.recommendationList
                                      .elementAt(index)
                                      .imageUrl,
                  ),
                  colorFilter: ColorFilter.mode(
                    Colors.black.withOpacity(0.4),
                    BlendMode.darken,
                  ),
                  fit: BoxFit.cover,
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 15.w, vertical: 20.h),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Spacer(),
                  Container(
                    decoration: BoxDecoration(
                      color: Theme.of(context).primaryColor,
                      borderRadius: BorderRadius.circular(
                        15,
                      ),
                    ),
                    child: Padding(
                      padding: EdgeInsets.symmetric(
                        horizontal: 12.w,
                        vertical: 4.h,
                      ),
                      child: Text(
                         listType == AppStrings.kBreakingNews
                                  ? providerData.breakingNewsList
                                      .elementAt(index)
                                      .category
                                  : providerData.recommendationList
                                      .elementAt(index)
                                      .category,
                        style: Theme.of(context).textTheme.bodyLarge!.copyWith(
                              color: Colors.white,
                            ),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 8.h,
                  ),
                  Text(
                    overflow: TextOverflow.ellipsis,
                    maxLines: 3,
                     listType == AppStrings.kBreakingNews
                                  ? providerData.breakingNewsList
                                      .elementAt(index)
                                      .title
                                  : providerData.recommendationList
                                      .elementAt(index)
                                      .title,
                    style: Theme.of(context).textTheme.headlineSmall!.copyWith(
                          color: Colors.white.withOpacity(.9),
                          fontWeight: FontWeight.normal,
                        ),
                  ),
                  SizedBox(
                    height: 8.h,
                  ),
                  Row(
                    children: [
                      Text(
                        overflow: TextOverflow.ellipsis,
                        'Trending',
                        style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                              color: Colors.grey.shade300.withOpacity(.9),
                              fontWeight: FontWeight.w100,
                            ),
                      ),
                      SizedBox(
                        width: 6.w,
                      ),
                      const CircleAvatar(
                        backgroundColor: Colors.white,
                        radius: 2,
                      ),
                      SizedBox(
                        width: 6.w,
                      ),
                      Text(
                         listType == AppStrings.kBreakingNews
                                  ? '${providerData.breakingNewsList
                                      .elementAt(index)
                                      .publishedDate} hours ago'
                                  : providerData.recommendationList
                                      .elementAt(index)
                                      .publishedDate
                       ,
                        style: Theme.of(context).textTheme.bodySmall!.copyWith(
                              color: Colors.grey.shade300.withOpacity(
                                .9,
                              ),
                              fontWeight: FontWeight.w100,
                            ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 4.h,
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
}