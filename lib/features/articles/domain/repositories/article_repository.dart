import 'package:clean_arch_flutter_bloc_news_app/core/error/failures.dart';
import 'package:clean_arch_flutter_bloc_news_app/features/articles/domain/entities/article_entity.dart';
import 'package:dartz/dartz.dart';

abstract class ArticleRepository{
  Future<Either<Failure, List<ArticleEntity>>> getNewsArticle();
}