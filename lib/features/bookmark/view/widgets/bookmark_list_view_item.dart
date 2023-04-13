import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../../core/helpers/convert_timestamp.dart';
import '../../../../core/utils/app_assets.dart';
import '../../../../core/utils/app_strings.dart';
import '../../manager/bookmark_provider.dart';
import 'package:provider/provider.dart';


class BookMarkListViewItem extends StatelessWidget {
  const BookMarkListViewItem({super.key, required this.index});

  final int index;
  @override
  Widget build(BuildContext context) {
    final providerData = Provider.of<BookMarkProvider>(
      context,
    );

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
                  providerData.bookMarkList.elementAt(index).urlToImage ??
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
                    providerData.bookMarkList.elementAt(index).title!,
                    maxLines: 2,
                    overflow: TextOverflow.ellipsis,
                    style: Theme.of(context).textTheme.titleMedium!.copyWith(
                          fontWeight: FontWeight.bold,
                        ),
                  ),
                  Row(
                    children: [
                      CircleAvatar(
                        backgroundImage:
                            const NetworkImage(AppAssets.profileImg),
                        radius: 10.w,
                      ),
                      SizedBox(
                        width: 6.w,
                      ),
                      Expanded(
                        child: Text(
                          providerData.bookMarkList
                              .elementAt(index)
                              .source!
                              .name!,
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
                          toDayMonthYear(providerData.bookMarkList
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
