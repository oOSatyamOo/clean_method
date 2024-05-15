import 'package:clean_architect_flutter/core/resources/data_state.dart';
import 'package:clean_architect_flutter/features/daily_news/domain/data_sources/get_article.dart';
import 'package:clean_architect_flutter/features/daily_news/persentation/bloc/article/remote/remote_article_event.dart';
import 'package:clean_architect_flutter/features/daily_news/persentation/bloc/article/remote/remote_article_state.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class RemoteArticleBloc extends Bloc<RemoteArticleEvent, RemoteArticleState> {
  final GetArticleUseCase _getArticleUseCase;
  RemoteArticleBloc(this._getArticleUseCase)
      : super(const RemoteArticleLoading()) {
    on<GetArticles>(onGetArticles);
  }

  void onGetArticles(
      GetArticles event, Emitter<RemoteArticleState> emit) async {
    final dataState = await _getArticleUseCase();
    if (dataState is DataSuccess && dataState.data!.isNotEmpty) {
      emit(RemoteArticleLoaded(dataState.data!));
    } else {
      emit(RemoteArticleException(dataState.exception!));
    }
  }
}
