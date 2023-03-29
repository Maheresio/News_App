import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'breaking_news_slider_item.dart';
import 'package:provider/provider.dart';

import '../../manager/home_provider.dart';

class BreakingNewsSlider extends StatelessWidget {
  const BreakingNewsSlider({super.key});

  @override
  Widget build(BuildContext context) {
    final providerData = Provider.of<HomeProvider>(context, listen: false);
    return CarouselSlider.builder(
      itemCount: providerData.breakingNewsList.length,
      itemBuilder: (BuildContext context, int itemIndex, int pageViewIndex) =>
          BreakingNewsSliderItem(
        index: itemIndex,
      ),
      options: CarouselOptions(
        autoPlay: true,
        onPageChanged: (index, reason) => providerData.toggleSlides(index),
        enlargeCenterPage: true,
        viewportFraction: .8,
        initialPage: 0,
      ),
    );
  }
}
