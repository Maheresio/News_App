import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';

import '../../repo/news_repo_impl.dart';
import 'api_service.dart';

final getIt = GetIt.instance;

void setup() {
  getIt.registerSingleton<Dio>(
    Dio(),
  );
  getIt.registerSingleton<ApiService>(
    ApiService(
      getIt.get<Dio>(),
    ),
  );
  getIt.registerSingleton<NewsRepoImpl>(
    NewsRepoImpl(
      getIt.get<ApiService>(),
    ),
  );
}
