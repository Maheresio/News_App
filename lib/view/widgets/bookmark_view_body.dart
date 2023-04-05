import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../core/helpers/custom_home_app_bar_icon.dart';
import 'bookmark_list_view.dart';
import 'package:provider/provider.dart';

import '../../manager/news_provider.dart';

class BookMarkViewBody extends StatelessWidget {
  const BookMarkViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    final providerData = Provider.of<NewsProvider>(context, listen: false);

    return providerData.bookMarkList.isEmpty
        ? const Center(
            child: Text('No Data Saved!'),
          )
        : SafeArea(
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 20.w),
              child: Column(
                children: [
                  SizedBox(
                    height: 20.h,
                  ),
                  Text(
                    'Bookmark',
                    style: Theme.of(context).textTheme.headlineLarge!.copyWith(
                          color: Colors.black,
                        ),
                  ),
                  SizedBox(
                    height: 20.h,
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
