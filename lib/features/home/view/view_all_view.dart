import 'package:flutter/material.dart';
import 'package:news_app/features/home/view/widgets/view_all_view_body.dart';

class ViewAllView extends StatelessWidget {
  const ViewAllView({super.key, required this.listType});

  final String listType;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ViewAllViewBody(
        listType: listType,
      ),
    );
  }
}
