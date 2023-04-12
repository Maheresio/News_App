import 'dart:ffi';

import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:news_app/repo/news_repo.dart';

part 'breaking_news_state.dart';

class BreakingNewsCubit extends Cubit<BreakingNewsState> {
  BreakingNewsCubit(this.newsRepo) : super(BreakingNewsInitial());

  final NewsRepo newsRepo;

  Future<void> getBreakingNews() async {
    emit(BreakingNewsLoading());
    await newsRepo.getBreakingNews();
  }
}
