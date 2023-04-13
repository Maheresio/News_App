import 'package:flutter/material.dart';

import '../../../models/news_model.dart';
import 'widgets/news_details_view_body.dart';

class NewsDetailsView extends StatelessWidget {
  const NewsDetailsView({super.key, required this.newsItem});
final NewsModel newsItem;
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: NewsDetailsViewBody(newsItem: newsItem),
    );
  }
}
