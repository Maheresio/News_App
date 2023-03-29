import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:provider/provider.dart';

import '../../manager/home_provider.dart';

class RecommendationListViewItem extends StatelessWidget {
  const RecommendationListViewItem({super.key,required this.index});

  final int index;
  @override
  Widget build(BuildContext context) {
    return Consumer<HomeProvider>(
      builder: (context, value, child) {
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
                    image: NetworkImage(
                        value.recommendationList.elementAt(index).imageUrl),
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
                        value.recommendationList.elementAt(index).category,
                        style: Theme.of(context).textTheme.titleSmall!.copyWith(
                              color: Colors.grey.shade500,
                            ),
                      ),
                      Text(
                        value.recommendationList.elementAt(index).title,
                        maxLines: 2,
                        overflow: TextOverflow.ellipsis,
                        style:
                            Theme.of(context).textTheme.titleMedium!.copyWith(
                                  fontWeight: FontWeight.bold,
                                ),
                      ),
                      Row(
                        children: [
                          CircleAvatar(
                            backgroundImage: NetworkImage(
                              value.recommendationList
                                  .elementAt(index)
                                  .profileImageUrl,
                            ),
                            radius: 10.w,
                          ),
                          SizedBox(
                            width: 6.w,
                          ),
                          Expanded(
                            child: Text(
                              value.recommendationList
                                  .elementAt(index)
                                  .publisher,
                              overflow: TextOverflow.ellipsis,
                              style: Theme.of(context)
                                  .textTheme
                                  .titleSmall!
                                  .copyWith(
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
                              ' Feb 27,2023',
                              overflow: TextOverflow.ellipsis,
                              style: Theme.of(context)
                                  .textTheme
                                  .titleSmall!
                                  .copyWith(
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
      },
    );
  }
}
