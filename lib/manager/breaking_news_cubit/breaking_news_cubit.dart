
import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:news_app/repo/news_repo.dart';

import '../../model/news_model/news_model.dart';

part 'breaking_news_state.dart';

class BreakingNewsCubit extends Cubit<BreakingNewsState> {
  BreakingNewsCubit(this.newsRepo) : super(BreakingNewsInitial());

  final NewsRepo newsRepo;

  List<NewsModel> _breakingNewsList = [];

  List<NewsModel> get breakingNewsList => [..._breakingNewsList];

 

  Future<void> getBreakingNews() async {
    emit(BreakingNewsLoading());
    final result = await newsRepo.getBreakingNews();
    result.fold((failure) => emit(BreakingNewsFailure(failure.errorMsg)),
        (news) {
      _breakingNewsList = news;
      emit(BreakingNewsSuccess(news));
    });
  }
}
