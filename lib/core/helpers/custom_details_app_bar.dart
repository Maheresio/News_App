import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';
import 'package:provider/provider.dart';

import '../../features/bookmark/manager/bookmark_provider.dart';
import '../../models/news_model.dart';
import '../utils/app_strings.dart';
import '../widgets/custom_image.dart';
import 'convert_timestamp.dart';

SliverAppBar customDetailsAppBar(BuildContext context, NewsModel newsItem) {
  final providerData = Provider.of<BookMarkProvider>(context);
  final index = providerData.findByTitle(newsItem);
  final isBookmarked = index != -1;

  return SliverAppBar(
    leadingWidth: 58.w,
    collapsedHeight: 60.h,
    leading: Padding(
      padding: EdgeInsetsDirectional.only(start: 15.w),
      child: IconButton(
        icon: const Icon(CupertinoIcons.chevron_left),
        onPressed: () => GoRouter.of(context).pop(),
      ),
    ),
    actions: [
      Padding(
        padding: EdgeInsetsDirectional.only(end: 4.w),
        child: IconButton(
          icon: Icon(
            isBookmarked
                ? CupertinoIcons.bookmark_fill
                : CupertinoIcons.bookmark,
          ),
          onPressed: () => providerData.toggleBookMark(newsItem),
        ),
      ),
      Padding(
        padding: EdgeInsetsDirectional.only(end: 15.w),
        child: IconButton(
          icon: const Icon(CupertinoIcons.ellipsis),
          onPressed: () {},
        ),
      ),
    ],
    pinned: true,
    floating: true,
    expandedHeight: 300.h,
    flexibleSpace: FlexibleSpaceBar(
      background: Container(
        color: Colors.white,
        width: double.infinity,
        child: Stack(
          fit: StackFit.expand,
          children: [
            CustomImage(imgUrl: newsItem.urlToImage,),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 15.w, vertical: 20.h),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Spacer(),
                  Container(
                    decoration: BoxDecoration(
                      color: Theme.of(context).primaryColor,
                      borderRadius: BorderRadius.circular(15),
                    ),
                    child: Padding(
                      padding:
                          EdgeInsets.symmetric(horizontal: 12.w, vertical: 4.h),
                      child: Text(
                        AppStrings.kExclusive,
                        style: Theme.of(context)
                            .textTheme
                            .bodyLarge!
                            .copyWith(color: Colors.white),
                      ),
                    ),
                  ),
                  SizedBox(height: 8.h),
                  Text(
                    overflow: TextOverflow.ellipsis,
                    maxLines: 3,
                    newsItem.title!,
                    style: Theme.of(context).textTheme.headlineSmall!.copyWith(
                          color: Colors.white.withOpacity(.9),
                          fontWeight: FontWeight.normal,
                        ),
                  ),
                  SizedBox(height: 8.h),
                  Row(
                    children: [
                      Text(
                        overflow: TextOverflow.ellipsis,
                        AppStrings.kTrending,
                        style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                              color: Colors.grey.shade300.withOpacity(.9),
                              fontWeight: FontWeight.w100,
                            ),
                      ),
                      SizedBox(width: 6.w),
                      const CircleAvatar(
                        backgroundColor: Colors.white,
                        radius: 2,
                      ),
                      SizedBox(width: 6.w),
                      Text(
                        toDayMonthYearHour(newsItem.publishedAt!),
                        style: Theme.of(context).textTheme.bodySmall!.copyWith(
                              color: Colors.grey.shade300.withOpacity(.9),
                              fontWeight: FontWeight.w100,
                            ),
                      ),
                    ],
                  ),
                  SizedBox(height: 4.h),
                ],
              ),
            ),
          ],
        ),
      ),
    ),
  );
}

