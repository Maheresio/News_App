part of 'recommendation_news_cubit.dart';

abstract class RecommendationNewsState extends Equatable {
  const RecommendationNewsState();

  @override
  List<Object> get props => [];
}

class RecommendationNewsInitial extends RecommendationNewsState {}

class RecommendationNewsSuccess extends RecommendationNewsState {}

class RecommendationNewsFailure extends RecommendationNewsState {
  final String errorMsg;

  const RecommendationNewsFailure(this.errorMsg);
}

class RecommendationNewsLoading extends RecommendationNewsState {}
