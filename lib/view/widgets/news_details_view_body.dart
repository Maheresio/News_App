import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'custom_blurred_app_bar_icon.dart';

class NewsDetailsViewBody extends StatelessWidget {
  const NewsDetailsViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      slivers: [
        SliverAppBar(
          pinned: true,
          floating: true,
          snap: true,
          expandedHeight: 300.h,
          flexibleSpace: Stack(
            children: [
              SizedBox(
                width: double.infinity,
                height: 500.h,
                child: Image.network(
                  'https://images.giant-bicycles.com/npxjlknouzmeri0mnboz/preview.jpg',
                  fit: BoxFit.cover,
                ),
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 20.w, vertical: 40.h),
                child: Column(
                  children: [
                    Row(
                      children: [
                        const CustomBlurredAppBarIcon(
                          iconData: CupertinoIcons.chevron_left,
                        ),
                        const Spacer(),
                        Padding(
                          padding: EdgeInsetsDirectional.only(end: 4.w),
                          child: const CustomBlurredAppBarIcon(
                            iconData: CupertinoIcons.bookmark,
                          ),
                        ),
                        const CustomBlurredAppBarIcon(
                          iconData: CupertinoIcons.ellipsis,
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
