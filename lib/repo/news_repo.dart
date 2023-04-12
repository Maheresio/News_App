import 'package:news_app/model/news_model/news_model.dart';

abstract class NewsRepo
{
  Future<List<NewsModel>> getBreakingNews();
  Future<List<NewsModel>> getRecommendationNews();
}