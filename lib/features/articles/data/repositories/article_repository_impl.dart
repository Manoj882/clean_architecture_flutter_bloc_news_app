
import 'package:clean_arch_flutter_bloc_news_app/features/articles/data/models/article_model.dart';
import 'package:clean_arch_flutter_bloc_news_app/features/articles/domain/entities/article_entity.dart';
import 'package:clean_arch_flutter_bloc_news_app/core/error/failures.dart';
import 'package:clean_arch_flutter_bloc_news_app/features/articles/domain/repositories/article_repository.dart';
import 'package:dartz/dartz.dart';

class ArticleRepositoryImpl implements ArticleRepository {
  @override
  Future<Either<Failure, List<ArticleModel>>> getNewsArticle() {
    // TODO: implement getNewsArticle
    throw UnimplementedError();
  }

}