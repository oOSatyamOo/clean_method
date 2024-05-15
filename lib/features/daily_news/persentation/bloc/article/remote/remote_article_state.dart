import 'package:clean_architect_flutter/features/daily_news/domain/entities/artical_entity.dart';
import 'package:equatable/equatable.dart';
import 'package:dio/dio.dart';

abstract class RemoteArticleState extends Equatable {
  final List<ArticalEntity> articles;
  final DioException? exception;

  const RemoteArticleState({this.exception, this.articles = const []});
  @override
  List<Object?> get props => [articles, exception];
}

class RemoteArticleLoading extends RemoteArticleState {
  const RemoteArticleLoading();
}

class RemoteArticleLoaded extends RemoteArticleState {
  const RemoteArticleLoaded(List<ArticalEntity> article)
      : super(articles: article);
}

class RemoteArticleException extends RemoteArticleState {
  const RemoteArticleException(DioException exception)
      : super(exception: exception);
}
