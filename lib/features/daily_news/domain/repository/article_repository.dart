import 'package:clean_architect_flutter/core/resources/data_state.dart';
import 'package:clean_architect_flutter/features/daily_news/domain/entities/artical_entity.dart';

abstract class ArticleRepository {
  Future<DataState<List<ArticalEntity>>> getNewsArticles();
}
