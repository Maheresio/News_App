import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';

import '../../model/news_model/news_model.dart';
import '../../repo/news_repo.dart';

part 'recommendation_news_state.dart';

class RecommendationNewsCubit extends Cubit<RecommendationNewsState> {
  RecommendationNewsCubit(this.newsRepo) : super(RecommendationNewsInitial());

  final NewsRepo newsRepo;

  List<NewsModel> _recommendationList = [];

  List<NewsModel> get recommendationList => [..._recommendationList];

  Future<void> getRecommendationNews() async {
    emit(RecommendationNewsLoading());
    final result = await newsRepo.getRecommendationNews();
    result.fold((failure) => emit(RecommendationNewsFailure(failure.errorMsg)),
        (news) {
      _recommendationList = news;
      emit(RecommendationNewsSuccess(news));
    });
  }
}
