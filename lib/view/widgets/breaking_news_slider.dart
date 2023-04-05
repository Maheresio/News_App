import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:go_router/go_router.dart';
import '../../core/utils/app_router.dart';
import '../../manager/news_provider.dart';
import 'breaking_news_slider_item.dart';
import 'package:provider/provider.dart';

class BreakingNewsSlider extends StatelessWidget {
  const BreakingNewsSlider({super.key});

  @override
  Widget build(BuildContext context) {
    return Consumer<NewsProvider>(
        builder: (context, value, _) => CarouselSlider.builder(
              itemCount: value.breakingNewsList.length,
              itemBuilder:
                  (BuildContext context, int itemIndex, int pageViewIndex) =>
                      InkWell(
                onTap: () => GoRouter.of(context).push(
                  AppRouter.kNewsDetailsView,
                  extra: value.breakingNewsList.elementAt(itemIndex),
                ),
                child: BreakingNewsSliderItem(
                  index: itemIndex,
                ),
              ),
              options: CarouselOptions(
                autoPlay: true,
                onPageChanged: (index, reason) => value.toggleSlides(index),
                enlargeCenterPage: true,
                viewportFraction: .8,
                initialPage: 0,
              ),
            ));
  }
}
