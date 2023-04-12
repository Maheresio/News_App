import 'package:news_app/core/utils/api_service.dart';
import 'package:news_app/model/news_model/news_model.dart';
import 'package:news_app/repo/news_repo.dart';

class NewsRepoImpl implements NewsRepo {
  ApiService apiService;

  NewsRepoImpl(this.apiService);

  @override
  Future<List<NewsModel>> getBreakingNews() async {
    final data = await apiService.get(url: ApiService.breakingNewsUrl);
    List<NewsModel> breakingNewsList = [];
    for (var item in data['articles']) {
      breakingNewsList.add(NewsModel.fromJson(item));
    }
    return breakingNewsList;
  }

  @override
  Future<List<NewsModel>> getRecommendationNews() async {
    final data = await apiService.get(url: ApiService.recommendationUrl);
    List<NewsModel> recommendationNewsList = [];
    for (var item in data['articles']) {
      recommendationNewsList.add(NewsModel.fromJson(item));
    }
    return recommendationNewsList;
  }
}
