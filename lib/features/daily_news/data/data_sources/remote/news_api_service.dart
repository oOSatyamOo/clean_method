import 'package:clean_architect_flutter/core/resources/constants.dart';
import 'package:clean_architect_flutter/features/daily_news/data/models/artical_model.dart';
import 'package:retrofit/retrofit.dart';
import 'package:dio/dio.dart';
part 'news_api_service.g.dart';

@RestApi(baseUrl: newsApiBaseUrl)
abstract class NewsApiService {
  factory NewsApiService(Dio dio) = _NewsApiService;

  @GET('/top-headlines')
  Future<HttpResponse<List<ArticleModel>>> getNewsArticles({
    @Query('apiKey') required String apiKey,
    @Query('country') required String country,
    @Query('category') required String category,
  });
}
