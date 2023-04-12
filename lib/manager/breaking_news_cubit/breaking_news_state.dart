part of 'breaking_news_cubit.dart';

abstract class BreakingNewsState extends Equatable {
  const BreakingNewsState();

  @override
  List<Object> get props => [];
}

class BreakingNewsInitial extends BreakingNewsState {}

class BreakingNewsSuccess extends BreakingNewsState {}

class BreakingNewsFailure extends BreakingNewsState {
  final String errorMsg;

 const BreakingNewsFailure(this.errorMsg);
}

class BreakingNewsLoading extends BreakingNewsState {}
