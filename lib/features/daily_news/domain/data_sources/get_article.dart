import 'package:clean_architect_flutter/core/resources/data_state.dart';
import 'package:clean_architect_flutter/core/usecases/usecase.dart';
import 'package:clean_architect_flutter/features/daily_news/domain/entities/artical_entity.dart';
import 'package:clean_architect_flutter/features/daily_news/domain/repository/article_repository.dart';

class GetArticleUseCase
    implements Usecase<DataState<List<ArticalEntity>>, void> {
  final ArticleRepository _articleRepository;

  GetArticleUseCase({required ArticleRepository articleRepository})
      : _articleRepository = articleRepository;

  @override
  Future<DataState<List<ArticalEntity>>> call({void params}) {
    return _articleRepository.getNewsArticles();
  }
}
