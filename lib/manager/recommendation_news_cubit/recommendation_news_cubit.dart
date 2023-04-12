import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';

import '../../repo/news_repo.dart';

part 'recommendation_news_state.dart';

class RecommendationNewsCubit extends Cubit<RecommendationNewsState> {
  RecommendationNewsCubit(this.newsRepo) : super(RecommendationNewsInitial());

  final NewsRepo newsRepo;

  Future<void> getRecommendationNews() async {
    emit(BreakingNewsLoading());
    await newsRepo.getRecommendationNews();
  }
}
