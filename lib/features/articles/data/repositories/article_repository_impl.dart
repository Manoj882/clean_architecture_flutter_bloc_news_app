
import 'package:clean_arch_flutter_bloc_news_app/core/error/exceptions.dart';
import 'package:clean_arch_flutter_bloc_news_app/features/articles/data/datasources/article_remote_data_source.dart';
import 'package:clean_arch_flutter_bloc_news_app/features/articles/data/models/article_model.dart';
import 'package:clean_arch_flutter_bloc_news_app/core/error/failures.dart';
import 'package:clean_arch_flutter_bloc_news_app/features/articles/domain/repositories/article_repository.dart';
import 'package:dartz/dartz.dart';

class ArticleRepositoryImpl implements ArticleRepository {
  final ArticleRemoteDataSource remoteDataSource;
  

  ArticleRepositoryImpl({
    required this.remoteDataSource,
  });


  @override
  Future<Either<Failure, List<ArticleModel>>> getNewsArticle() async {
    try {
      final response = await remoteDataSource.getNewsArticle();
    return Right(response);
    } on ServerException {
      return Left(ServerFailure());
    }
  }

}