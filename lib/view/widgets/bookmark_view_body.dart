import 'package:flutter/material.dart';
import 'package:news_app/view/widgets/bookmark_list_view.dart';
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
        : const BookMarkListView();
  }
}
