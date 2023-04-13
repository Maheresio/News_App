import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';
import 'convert_timestamp.dart';
import '../utils/app_assets.dart';
import '../utils/app_strings.dart';
import '../../features/bookmark/manager/bookmark_provider.dart';
import 'package:provider/provider.dart';

import '../../models/news_model.dart';
import '../widgets/custom_blurred_app_bar_icon.dart';

SliverAppBar customDetailsAppBar(BuildContext context, NewsModel newsItem) {
  final providerData = Provider.of<BookMarkProvider>(context);
  final int index = providerData.findByTitle(newsItem);

  return SliverAppBar(
    leadingWidth: 58.w,
    collapsedHeight: 60.h,
    leading: Padding(
      padding: EdgeInsetsDirectional.only(start: 15.w),
      child: CustomBlurredAppBarIcon(
        iconData: CupertinoIcons.chevron_left,
        onPressed: () => GoRouter.of(context).pop(),
      ),
    ),
    actions: [
      Padding(
        padding: EdgeInsetsDirectional.only(end: 4.w),
        child: CustomBlurredAppBarIcon(
          iconData: index == -1
              ? CupertinoIcons.bookmark
              : CupertinoIcons.bookmark_fill,
          onPressed: () => providerData.toggleBookMark(newsItem),
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
                image: CachedNetworkImageProvider(
                  newsItem.urlToImage ?? AppAssets.placeholderImg,
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
                      AppStrings.kExclusive,
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
                  newsItem.title!,
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
                      toDayMonthYear(newsItem.publishedAt!),
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
