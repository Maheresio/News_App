import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:news_app/core/utils/app_strings.dart';
import 'package:provider/provider.dart';

import '../../core/helpers/custom_details_app_bar.dart';
import '../../manager/news_provider.dart';

class NewsDetailsViewBody extends StatelessWidget {
  const NewsDetailsViewBody({super.key, required this.data});
  final Map<String, dynamic> data;

  @override
  Widget build(BuildContext context) {
    final providerData = Provider.of<NewsProvider>(context, listen: false);
    final int index = data['index'];
    final listType = data['type'];

    return NestedScrollView(
      headerSliverBuilder: (context, innerBoxIsScrolled) =>
          [customDetailsAppBar(context, listType, index)],
      body: CustomScrollView(
        slivers: <Widget>[
          SliverFillRemaining(
            hasScrollBody: false,
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
                  children: [
                    Row(
                      children: [
                        CircleAvatar(
                          backgroundImage: NetworkImage(
                              listType == AppStrings.kBreakingNews
                                  ? providerData.breakingNewsList
                                      .elementAt(index)
                                      .imageUrl
                                  : providerData.recommendationList
                                      .elementAt(index)
                                      .imageUrl),
                        ),
                        SizedBox(width: 4.w),
                        Text(
                          listType == AppStrings.kBreakingNews
                              ? providerData.breakingNewsList
                                  .elementAt(index)
                                  .author
                              : providerData.recommendationList
                                  .elementAt(index)
                                  .author,
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
                    Expanded(
                      child: Text(
                        listType == AppStrings.kBreakingNews
                            ? providerData.breakingNewsList
                                .elementAt(index)
                                .description
                            : 'Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old. Richard McClintock, a Latin professor at Hampden-Sydney College in Virginia, looked up one of the more obscure Latin words, consectetur, from a Lorem Ipsum passage, and going through the cites of the word in classical literature, discovered the undoubtable source. Lorem Ipsum comes from sections 1.10.32 and 1.10.33 of "de Finibus Bonorum et Malorum" (The Extremes of Good and Evil) by Cicero, written in 45 BC. This book is a treatise on the theory of ethics, very popular during the Renaissance. The first line of Lorem Ipsum, "Lorem ipsum dolor sit amet..", comes from a line in section 1.10.32.',
                        style:
                            Theme.of(context).textTheme.titleMedium!.copyWith(
                                  fontWeight: FontWeight.w400,
                                  height: 1.5,
                                ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
