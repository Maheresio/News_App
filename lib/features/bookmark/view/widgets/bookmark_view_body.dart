import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../../core/utils/app_strings.dart';
import '../../manager/bookmark_provider.dart';
import 'bookmark_list_view.dart';
import 'package:provider/provider.dart';

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
              padding: EdgeInsets.symmetric(horizontal: 20.w),
              child: Column(
                children: [
                  SizedBox(
                    height: 20.h,
                  ),
                  Text(
                    AppStrings.kBookmark,
                    style: Theme.of(context).textTheme.headlineLarge!.copyWith(
                          color: Colors.black,
                          fontWeight: FontWeight.bold,
                        ),
                  ),
                  SizedBox(
                    height: 40.h,
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
