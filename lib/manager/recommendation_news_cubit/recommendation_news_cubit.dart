import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';

part 'recommendation_news_state.dart';

class RecommendationNewsCubit extends Cubit<RecommendationNewsState> {
  RecommendationNewsCubit() : super(RecommendationNewsInitial());
}
