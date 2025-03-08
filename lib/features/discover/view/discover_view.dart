import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../core/utils/service_locator.dart';
import '../../../repos/news_repo_impl.dart';
import '../manager/discover_cubit.dart';
import 'widgets/discover_view_body.dart';

class DiscoverView extends StatelessWidget {
  const DiscoverView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider<DiscoverNewsCubit>(
      create: (context) =>
          DiscoverNewsCubit(getIt.get<NewsRepoImpl>())..getDiscoverNews(null),
      child: const DiscoverViewBody(),
    );
  }
}
