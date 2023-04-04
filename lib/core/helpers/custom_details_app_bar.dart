import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../view/widgets/custom_blurred_app_bar_icon.dart';

SliverAppBar customDetailsAppBar(BuildContext context) => SliverAppBar(
      leadingWidth: 58.w,
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
                  image: const NetworkImage(
                    'https://images.giant-bicycles.com/npxjlknouzmeri0mnboz/preview.jpg',
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
                        'sports',
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
                    'Alexander wears mofified helmet in road racesAlexander wears mofified helmet in road racesAlexander wears mofified helmet in road racesAlexander wears mofified helmet in road races',
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
                        '6 hours ago',
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
