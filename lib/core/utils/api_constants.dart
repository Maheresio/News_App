abstract class ApiConstants {
  static const String _apiKey = '708465389c8845688b057f35b7b519bc';
  static const String _baseUrl = 'https://newsapi.org/v2';

  static const String breakingNewsUrl =
      '$_baseUrl/top-headlines?country=us&apiKey=$_apiKey';
  static const String recommendationUrl =
      '$_baseUrl/everything?q=keyword&apiKey=$_apiKey';

  static const String discoverNewsUrl =
      '$_baseUrl/everything?domains=wsj.com&apiKey=$_apiKey';
}
