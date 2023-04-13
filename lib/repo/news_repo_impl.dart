import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:news_app/core/error/failure.dart';
import 'package:news_app/core/utils/api_constants.dart';
import 'package:news_app/core/utils/api_service.dart';
import 'package:news_app/model/news_model.dart';
import 'package:news_app/repo/news_repo.dart';

import '../core/utils/app_constants.dart';

class NewsRepoImpl implements NewsRepo {
  ApiService apiService;

  NewsRepoImpl(this.apiService);

  @override
  EitherType getBreakingNews() async {
    try {
      final data = await apiService.get(url: ApiConstants.breakingNewsUrl);
      List<NewsModel> breakingNewsList = [];

      breakingNewsList.addAll(
        [
          ...data['articles'].map(
            (item) => NewsModel.fromJson(item),
          )
        ],
      );
      return right(breakingNewsList);
    } catch (e) {
      if (e is DioError) {
        return left(ServerFailure.fromDioError(e));
      }
      return left(ServerFailure(e.toString()));
    }
  }

  @override
  EitherType getRecommendationNews() async {
    try {
      final data = await apiService.get(url: ApiConstants.recommendationUrl);
      List<NewsModel> recommendationNewsList = [];

      recommendationNewsList.addAll(
        [
          ...data['articles'].map(
            (item) => NewsModel.fromJson(item),
          )
        ],
      );
      return right(recommendationNewsList);
    } catch (e) {
      if (e is DioError) {
        return left(ServerFailure.fromDioError(e));
      }
      return left(ServerFailure(e.toString()));
    }
  }
}
