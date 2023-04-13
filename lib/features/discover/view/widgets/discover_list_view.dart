import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';
import '../../../../core/widgets/featured_list_view_item.dart';
import '../../manager/discover_cubit.dart';

import '../../../../core/utils/app_router.dart';
import '../../../../core/widgets/custom_progress_indicator.dart';
import '../../../../core/widgets/error_data_widget.dart';

class DiscoverListView extends StatelessWidget {
  const DiscoverListView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<DiscoverNewsCubit, DiscoverNewsState>(
        builder: ((context, state) {
      if (state is DiscoverNewsFailure) {
        return const Expanded(child: ErrorDataWidget());
      }
      if (state is DiscoverNewsSuccess) {
        return Expanded(
          child: ListView.separated(
            physics: const BouncingScrollPhysics(),
            itemBuilder: (context, index) => InkWell(
              onTap: () => GoRouter.of(context).push(
                AppRouter.kNewsDetailsView,
                extra: state.discoverList.elementAt(index),
              ),
              child: FeaturedListViewItem(
                newsItem: state.discoverList.elementAt(index),
              ),
            ),
            itemCount: state.discoverList.length,
            scrollDirection: Axis.vertical,
            separatorBuilder: (context, index) => SizedBox(
              height: 12.h,
            ),
          ),
        );
      }

      return const Expanded(child: CustomProgressIndicator());
    }));
  }
}
