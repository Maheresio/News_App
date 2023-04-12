part of 'recommendation_news_cubit.dart';

abstract class RecommendationNewsState extends Equatable {
  const RecommendationNewsState();

  @override
  List<Object> get props => [];
}

class RecommendationNewsInitial extends RecommendationNewsState {}

class BreakingNewsSuccess extends RecommendationNewsState {}

class BreakingNewsFailure extends RecommendationNewsState {}

class BreakingNewsLoading extends RecommendationNewsState {}
