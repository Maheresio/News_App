import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../../core/helpers/convert_timestamp.dart';
import '../../../../core/utils/app_assets.dart';
import '../../../../core/utils/app_strings.dart';

import '../../managers/recommendation_news_cubit/recommendation_news_cubit.dart';

class RecommendationListViewItem extends StatelessWidget {
  const RecommendationListViewItem({super.key, required this.index});

  final int index;
  @override
  Widget build(BuildContext context) {
    final blocData =
        BlocProvider.of<RecommendationNewsCubit>(context, listen: false);

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
              image: DecorationImage(
                image: CachedNetworkImageProvider(
                  blocData.recommendationList.elementAt(index).urlToImage ??
                      AppAssets.placeholderImg,
                ),
                fit: BoxFit.cover,
              ),
            ),
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
                    blocData.recommendationList.elementAt(index).title!,
                    maxLines: 2,
                    overflow: TextOverflow.ellipsis,
                    style: Theme.of(context).textTheme.titleMedium!.copyWith(
                          fontWeight: FontWeight.bold,
                        ),
                  ),
                  Row(
                    children: [
                      CircleAvatar(
                        backgroundImage: const CachedNetworkImageProvider(
                          AppAssets.profileImg,
                        ),
                        radius: 10.w,
                      ),
                      SizedBox(
                        width: 6.w,
                      ),
                      Expanded(
                        child: Text(
                          blocData.recommendationList.elementAt(index).author ??
                              AppStrings.kPrivate,
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
                          toDayMonthYear(blocData.recommendationList
                              .elementAt(index)
                              .publishedAt!),
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
