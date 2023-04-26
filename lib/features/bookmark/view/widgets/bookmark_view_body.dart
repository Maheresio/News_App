import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:provider/provider.dart';

import '../../../../core/helpers/custom_home_app_bar_icon.dart';
import '../../../../core/utils/app_strings.dart';
import '../../manager/bookmark_provider.dart';
import 'bookmark_list_view.dart';

class BookMarkViewBody extends StatelessWidget {
  const BookMarkViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    final providerData = Provider.of<BookMarkProvider>(context);

    return providerData.bookMarkList.isEmpty
        ? const Center(
            child: Text('No Data Saved!'),
          )
        : SafeArea(
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 16.w),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(
                    height: 16.h,
                  ),
                  customHomeAppBarIcon(
                    icon: CupertinoIcons.chevron_left,
                    heroTag: 'btn7',
                  ),
                  SizedBox(
                    height: 8.h,
                  ),
                  Text(
                    AppStrings.kBookmark,
                    style: Theme.of(context).textTheme.headlineLarge!.copyWith(
                          color: Colors.black,
                          fontWeight: FontWeight.bold,
                        ),
                  ),
                  const Divider(),
                  SizedBox(
                    height: 16.h,
                  ),
                  const Expanded(
                    child: BookMarkListView(),
                  ),
                ],
              ),
            ),
          );
  }
}
