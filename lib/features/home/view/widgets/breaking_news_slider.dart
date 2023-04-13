import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:provider/provider.dart';

import '../../../../core/utils/app_router.dart';
import '../../../../core/widgets/custom_progress_indicator.dart';
import '../../../../core/widgets/error_data_widget.dart';
import '../../../../manager/news_provider.dart';
import '../../managers/breaking_news_cubit/breaking_news_cubit.dart';
import 'breaking_news_slider_item.dart';

class BreakingNewsSlider extends StatelessWidget {
  const BreakingNewsSlider({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<BreakingNewsCubit, BreakingNewsState>(
        buildWhen: (previous, current) => previous != current,
        builder: (context, state) {
          if (state is BreakingNewsFailure) {
            return const ErrorDataWidget();
          } else if (state is BreakingNewsSuccess) {
            return CarouselSlider.builder(
              itemCount: 6,
              itemBuilder:
                  (BuildContext context, int itemIndex, int pageViewIndex) =>
                      InkWell(
                onTap: () => GoRouter.of(context).push(
                  AppRouter.kNewsDetailsView,
                  extra: state.breakingNewsList.elementAt(itemIndex),
                ),
                child: BreakingNewsSliderItem(
                  index: itemIndex,
                ),
              ),
              options: CarouselOptions(
                autoPlay: true,
                onPageChanged: (index, reason) {
                  Provider.of<NewsProvider>(context, listen: false)
                      .toggleSlides(index);
                },
                enlargeCenterPage: true,
                viewportFraction: .8,
                initialPage: 0,
              ),
            );
          }
          return const CustomProgressIndicator();
        });
  }
}
