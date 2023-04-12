
import 'package:dio/dio.dart';

class ApiService {
  static const String _apiKey = '83f80dfbf82846cf9652dc5615e97fba';
  static const String _baseUrl = 'https://newsapi.org/v2';

  static const String breakingNewsUrl =
      '$_baseUrl/top-headlines?country=us&apiKey=$_apiKey';
  static const String recommendationUrl =
      '$_baseUrl/everything?q=keyword&apiKey=$_apiKey';

  final Dio _dio;

  ApiService(this._dio);

  Future<Map<String, dynamic>> get({required String url}) async {
    final response = await _dio.get(url);
    return response.data;
  }
}
