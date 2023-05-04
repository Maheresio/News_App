import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../models/news_model.dart';
import '../helpers/convert_timestamp.dart';
import '../utils/app_assets.dart';
import '../utils/app_strings.dart';
import 'custom_image.dart';

class FeaturedListViewItem extends StatelessWidget {
  const FeaturedListViewItem({super.key, required this.newsItem});

  final NewsModel newsItem;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 100.h,
      width: double.infinity,
      child: Row(
        children: [
          Container(
            height: 100.h,
            width: 120.w,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(15),
            ),
            child: ClipRRect(
                borderRadius: BorderRadius.circular(15),
                child: CustomImage(
                  imgUrl: newsItem.urlToImage,
                  enableEffects: false,
                )),
          ),
          Expanded(
            child: Padding(
              padding: EdgeInsetsDirectional.only(start: 8.w),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Text(
                    AppStrings.kExclusive,
                    style: Theme.of(context).textTheme.titleSmall!.copyWith(
                          color: Colors.grey.shade500,
                        ),
                  ),
                  Text(
                    newsItem.title!,
                    maxLines: 2,
                    overflow: TextOverflow.ellipsis,
                    style: Theme.of(context).textTheme.titleMedium!.copyWith(
                          fontWeight: FontWeight.bold,
                        ),
                  ),
                  Row(
                    children: [
                      CircleAvatar(
                        backgroundColor: Colors.white,
                        radius: 10.w,
                        child: Image.asset(AppAssets.kProfileImg),
                      ),
                      SizedBox(
                        width: 6.w,
                      ),
                      Expanded(
                        child: Text(
                          newsItem.source!.name!,
                          overflow: TextOverflow.ellipsis,
                          style:
                              Theme.of(context).textTheme.titleSmall!.copyWith(
                                    color: Colors.grey.shade500,
                                  ),
                        ),
                      ),
                      SizedBox(
                        width: 6.w,
                      ),
                      CircleAvatar(
                        backgroundColor: Colors.grey.shade500,
                        radius: 2,
                      ),
                      SizedBox(
                        width: 6.w,
                      ),
                      Expanded(
                        child: Text(
                          toDayMonthYear(newsItem.publishedAt!),
                          overflow: TextOverflow.ellipsis,
                          style:
                              Theme.of(context).textTheme.titleSmall!.copyWith(
                                    color: Colors.grey.shade500,
                                  ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
