import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';

import '../core/error/failure.dart';
import '../core/utils/api_constants.dart';
import '../core/utils/api_service.dart';
import '../core/utils/app_constants.dart';
import '../models/news_model.dart';
import 'news_repo.dart';

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
          ),
        ],
      );

      return right(breakingNewsList);
    } catch (e) {
      if (e is DioException) {
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
          ),
        ],
      );

      return right(recommendationNewsList);
    } catch (e) {
      if (e is DioException) {
        return left(ServerFailure.fromDioError(e));
      }

      return left(ServerFailure(e.toString()));
    }
  }

  @override
  EitherType getDiscoverNews() async {
    try {
      final data = await apiService.get(url: ApiConstants.discoverNewsUrl);
      List<NewsModel> discoverNewsList = [];

      discoverNewsList.addAll(
        [
          ...data['articles'].map(
            (item) => NewsModel.fromJson(item),
          ),
        ],
      );

      return right(discoverNewsList);
    } catch (e) {
      if (e is DioException) {
        return left(ServerFailure.fromDioError(e));
      }

      return left(ServerFailure(e.toString()));
    }
  }
}
