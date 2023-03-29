import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../manager/home_provider.dart';
import 'widgets/home_view_body.dart';

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
