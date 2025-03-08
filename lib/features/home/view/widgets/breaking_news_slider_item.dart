import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../core/helpers/convert_timestamp.dart';
import '../../../../core/utils/app_strings.dart';
import '../../../../core/widgets/custom_image.dart';
import '../../managers/breaking_news_cubit/breaking_news_cubit.dart';

class BreakingNewsSliderItem extends StatelessWidget {
  const BreakingNewsSliderItem({super.key, required this.index});

  final int index;

  @override
  Widget build(BuildContext context) {
    final blocData = BlocProvider.of<BreakingNewsCubit>(context, listen: false);
    final String? imageUrl =
        blocData.breakingNewsList.elementAt(index).urlToImage;

    return Container(
      width: double.infinity,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(20),
      ),
      child: Stack(
        fit: StackFit.expand,
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(20),
            child: CustomImage(imgUrl: imageUrl),
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 16.w, vertical: 16.h),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  decoration: BoxDecoration(
                    color: Theme.of(context).primaryColor,
                    borderRadius: BorderRadius.circular(15),
                  ),
                  child: Padding(
                    padding: EdgeInsets.symmetric(
                      horizontal: 12.w,
                      vertical: 4.h,
                    ),
                    child: Text(
                      AppStrings.kTrending,
                      style: Theme.of(
                        context,
                      ).textTheme.bodyLarge!.copyWith(color: Colors.white),
                    ),
                  ),
                ),
                const Spacer(),
                Row(
                  children: [
                    Flexible(
                      child: Text(
                        overflow: TextOverflow.ellipsis,
                        blocData.breakingNewsList
                            .elementAt(index)
                            .source!
                            .name!,
                        style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                          color: Colors.grey.shade300.withValues(alpha: .9),
                          fontWeight: FontWeight.w100,
                        ),
                      ),
                    ),
                    SizedBox(width: 6.w),
                    CircleAvatar(
                      backgroundColor: Theme.of(context).primaryColor,
                      radius: 7.w,
                      child: Icon(Icons.done, color: Colors.white, size: 8.w),
                    ),
                    SizedBox(width: 6.w),
                    const CircleAvatar(
                      backgroundColor: Colors.white,
                      radius: 2,
                    ),
                    SizedBox(width: 6.w),
                    Text(
                      toDayMonthYearHour(
                        blocData.breakingNewsList.elementAt(index).publishedAt!,
                      ),
                      style: Theme.of(context).textTheme.bodySmall!.copyWith(
                        color: Colors.grey.shade300.withValues(alpha: .9),
                        fontWeight: FontWeight.w100,
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 4.h),
                Expanded(
                  child: Text(
                    overflow: TextOverflow.ellipsis,
                    maxLines: 3,
                    blocData.breakingNewsList.elementAt(index).title!,
                    style: Theme.of(context).textTheme.titleLarge!.copyWith(
                      color: Colors.white.withValues(alpha: .9),
                      fontWeight: FontWeight.normal,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
