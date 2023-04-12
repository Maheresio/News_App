abstract class ApiConstants {
  static const String _apiKey = '83f80dfbf82846cf9652dc5615e97fba';
  static const String _baseUrl = 'https://newsapi.org/v2';

  static const String breakingNewsUrl =
      '$_baseUrl/top-headlines?country=us&apiKey=$_apiKey';
  static const String recommendationUrl =
      '$_baseUrl/everything?q=keyword&apiKey=$_apiKey';
}
