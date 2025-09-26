import 'package:dio/dio.dart';
import 'package:news_app/models/article_model.dart';

class NewsService {
  final Dio dio;
  NewsService(this.dio);

  Future<List<ArticleModel>> getTopHeadlines({required String category}) async {
    try {
      final response = await dio.get(
        //api from newsapi.org
        'https://newsapi.org/v2/top-headlines?apiKey=b5251d4fb41e4a9db958d593936cc79a&category=$category',
      );
      Map<String, dynamic> jsonData = response.data;

      List<dynamic> articles = jsonData['articles'];

      List<ArticleModel> article_list = []; // this has the objects i need

      for (var article in articles) {
        ArticleModel articleObj = ArticleModel.fromjson(article);
        article_list.add(articleObj);
      }
      return article_list;
    } catch (e) {
      return [];
    }
  }
}
