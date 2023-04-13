import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:news_app/core/utils/app_assets.dart';

import '../../core/helpers/custom_details_app_bar.dart';
import '../../model/news_model.dart';

class NewsDetailsViewBody extends StatelessWidget {
  const NewsDetailsViewBody({super.key, required this.newsItem});
  final NewsModel newsItem;

  @override
  Widget build(BuildContext context) {
    return NestedScrollView(
      headerSliverBuilder: (context, innerBoxIsScrolled) => [
        customDetailsAppBar(
          context,
          newsItem,
        ),
      ],
      body: CustomScrollView(
        slivers: <Widget>[
          SliverToBoxAdapter(
            child: Container(
              decoration: const BoxDecoration(
                borderRadius: BorderRadiusDirectional.only(
                  topStart: Radius.circular(30),
                  topEnd: Radius.circular(30),
                ),
              ),
              child: Padding(
                padding: EdgeInsets.symmetric(
                  horizontal: 15.w,
                  vertical: 15.h,
                ),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Row(
                      children: [
                        const CircleAvatar(
                          backgroundImage: NetworkImage(
                            AppAssets.profileImg,
                          ),
                        ),
                        SizedBox(width: 4.w),
                        Text(
                          newsItem.source!.name!,
                          style: Theme.of(context)
                              .textTheme
                              .headlineSmall!
                              .copyWith(
                                fontWeight: FontWeight.w500,
                                color: Colors.black,
                              ),
                        ),
                        SizedBox(width: 4.w),
                        Icon(
                          size: 15.w,
                          Icons.verified,
                          color: Theme.of(context).primaryColor,
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 15.h,
                    ),
                    Text(
                      newsItem.content??newsItem.description??'No Details',
                      style: Theme.of(context).textTheme.titleMedium!.copyWith(
                            fontWeight: FontWeight.w400,
                            height: 1.5,
                          ),
                    ),
                  ],
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
