import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:news_app/core/utils/service_locator.dart';
import 'package:news_app/features/discover/manager/discover_cubit.dart';
import 'package:news_app/features/discover/view/widgets/discover_view_body.dart';
import 'package:news_app/repos/news_repo_impl.dart';

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
