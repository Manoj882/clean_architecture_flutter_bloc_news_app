import 'package:clean_arch_flutter_bloc_news_app/core/constants/api_constant.dart';

class ArticleApi{

  static const String topHeadlinesEndPoint = '${ApiConstant.baseUrl}/top-headlines?country=us&apiKey=${ApiConstant.newsApiKey}';
}