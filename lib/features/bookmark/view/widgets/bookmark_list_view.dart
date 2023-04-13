import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';
import 'package:news_app/core/helpers/custom_alert_dialog.dart';
import 'package:news_app/core/widgets/featured_list_view_item.dart';
import 'package:provider/provider.dart';

import '../../../../core/utils/app_router.dart';
import '../../manager/bookmark_provider.dart';

class BookMarkListView extends StatelessWidget {
  const BookMarkListView({super.key});

  @override
  Widget build(BuildContext context) {
    return Consumer<BookMarkProvider>(
      builder: (context, value, _) => ListView.separated(
        physics: const BouncingScrollPhysics(),
        itemBuilder: (context, index) => InkWell(
            onTap: () => GoRouter.of(context).push(
                  AppRouter.kNewsDetailsView,
                  extra: value.bookMarkList.elementAt(index),
                ),
            child: Dismissible(
              direction: DismissDirection.endToStart,
              key: Key(value.bookMarkList.elementAt(index).title!),
              onDismissed: (direction) {
                value.removeFromBookMarkList(index);
              },
              confirmDismiss: (DismissDirection direction) async {
                return await showDialog(
                    context: context,
                    builder: (BuildContext context) {
                      return customAlertDialog(context);
                    });
              },
              background: Container(
                color: Colors.red,
                alignment: Alignment.centerRight,
                padding: EdgeInsetsDirectional.only(end: 10.w),
                child: const Icon(CupertinoIcons.delete),
              ),
              child: FeaturedListViewItem(
                newsItem: value.bookMarkList.elementAt(index),
              ),
            )),
        itemCount: value.bookMarkList.length,
        scrollDirection: Axis.vertical,
        separatorBuilder: (context, index) => SizedBox(
          height: 12.h,
        ),
      ),
    );
  }
}
