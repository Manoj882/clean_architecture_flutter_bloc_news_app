import 'dart:convert';
import 'package:clean_arch_flutter_bloc_news_app/features/articles/data/api/article_api.dart';
import 'package:clean_arch_flutter_bloc_news_app/features/articles/data/models/article_model.dart';
import 'package:http/http.dart' as http;

abstract class ArticleRemoteDataSource {
  Future<List<ArticleModel>> getNewsArticle();
}

class ArticleRemoteDataSourceImpl implements ArticleRemoteDataSource {
  final http.Client client;

  ArticleRemoteDataSourceImpl({required this.client});

  @override
  Future<List<ArticleModel>> getNewsArticle() => _getArticlesFromUrl(ArticleApi.topHeadlinesEndPoint);

  Future<List<ArticleModel>> _getArticlesFromUrl(String url) async {
    final response = await client.get(
      Uri.parse(url),
      headers: {
        "Content-Type": "application/json",
      }
    
    );
    if(response.statusCode == 200){
      final decodeResponse = json.decode(response.body);
      Iterable listOfArticles = decodeResponse['articles'];
      final listOfArticleModels =  listOfArticles.map((article) =>  
        ArticleModel.fromJson(article)
      ).toList();

      return listOfArticleModels;
    }
    return [];
    
  }
}
