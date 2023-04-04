import 'package:flutter/material.dart';
import '../manager/news_provider.dart';
import 'package:provider/provider.dart';

import 'widgets/home_view_body.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => NewsProvider(),
      child: const HomeViewBody(),
    );
  }
}
