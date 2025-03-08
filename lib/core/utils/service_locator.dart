import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';

import '../../repos/news_repo_impl.dart';
import 'api_service.dart';

final getIt = GetIt.instance;

void serviceLocator() {
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
