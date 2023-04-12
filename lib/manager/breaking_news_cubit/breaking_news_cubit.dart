import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';

part 'breaking_news_state.dart';

class BreakingNewsCubit extends Cubit<BreakingNewsState> {
  BreakingNewsCubit() : super(BreakingNewsInitial());
}
