import 'package:flutter/material.dart';

import 'widgets/news_details_view_body.dart';

class NewsDetailsView extends StatelessWidget {
  const NewsDetailsView({super.key, required this.data});
final Map<String,dynamic> data;
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: NewsDetailsViewBody(data: data),
    );
  }
}
