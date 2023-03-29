import 'package:flutter/material.dart';
import 'package:news_app/manager/home_provider.dart';
import 'package:news_app/view/widgets/home_view_body.dart';
import 'package:provider/provider.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => HomeProvider(),
      child: const HomeViewBody(),
    );
  }
}
