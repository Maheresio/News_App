import 'package:news_app/core/utils/api_constants.dart';
import 'package:news_app/core/utils/api_service.dart';
import 'package:news_app/model/news_model/news_model.dart';
import 'package:news_app/repo/news_repo.dart';

class NewsRepoImpl implements NewsRepo {
  ApiService apiService;

  NewsRepoImpl(this.apiService);

  @override
  Future<List<NewsModel>> getBreakingNews() async {
    final data = await apiService.get(url: ApiConstants.breakingNewsUrl);
    List<NewsModel> breakingNewsList = [];
    // for (var item in data['articles']) {
    //   breakingNewsList.add(NewsModel.fromJson(item));
    // }
    breakingNewsList.addAll(
      [
        ...data['articles'].map(
          (item) => NewsModel.fromJson(item),
        )
      ],
    );
    return breakingNewsList;
  }

  @override
  Future<List<NewsModel>> getRecommendationNews() async {
    final data = await apiService.get(url: ApiConstants.recommendationUrl);
    List<NewsModel> recommendationNewsList = [];
    // for (var item in data['articles']) {
    //   recommendationNewsList.add(NewsModel.fromJson(item));
    // }
    recommendationNewsList.addAll(
      [
        ...data['articles'].map(
          (item) => NewsModel.fromJson(item),
        )
      ],
    );
    return recommendationNewsList;
  }
}
