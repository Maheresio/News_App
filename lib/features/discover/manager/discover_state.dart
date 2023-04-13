part of 'discover_cubit.dart';

abstract class DiscoverNewsState extends Equatable {
  const DiscoverNewsState();

  @override
  List<Object> get props => [];
}

class DiscoverInitial extends DiscoverNewsState {}

class DiscoverNewsSuccess extends DiscoverNewsState {
  final List<NewsModel> discoverList;

  const DiscoverNewsSuccess(this.discoverList);
}

class DiscoverNewsFailure extends DiscoverNewsState {
  final String errorMsg;

  const DiscoverNewsFailure(this.errorMsg);
}

class DiscoverNewsLoading extends DiscoverNewsState {}


