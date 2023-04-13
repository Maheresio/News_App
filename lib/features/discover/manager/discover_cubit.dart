import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:news_app/models/news_model.dart';

import '../../../repos/news_repo.dart';

part 'discover_state.dart';

class DiscoverNewsCubit extends Cubit<DiscoverNewsState> {
  DiscoverNewsCubit(this.newsRepo) : super(DiscoverInitial());

  final NewsRepo newsRepo;

  List<NewsModel> _discoverNewsList = [];

  List<NewsModel> get discoverNewsList => [..._discoverNewsList];

  List<NewsModel> filteredNewsList = [];

  void filterNews(String value) {
    filteredNewsList = _discoverNewsList
        .where(
            (item) => item.title!.toLowerCase().contains(value.toLowerCase()))
        .toList();
  }

  Future<void> getDiscoverNews(String? value) async {
    emit(DiscoverNewsLoading());
    final result = await newsRepo.getDiscoverNews();
    result.fold((failure) => emit(DiscoverNewsFailure(failure.errorMsg)),
        (news) {
      _discoverNewsList = news;

      filteredNewsList = value != null
          ? _discoverNewsList
              .where((item) =>
                  item.title!.toLowerCase().contains(value.toLowerCase()))
              .toList()
          : news;
      emit(DiscoverNewsSuccess(filteredNewsList));
    });
  }
}
