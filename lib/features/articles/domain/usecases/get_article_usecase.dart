
import 'package:clean_arch_flutter_bloc_news_app/core/error/failures.dart';
import 'package:clean_arch_flutter_bloc_news_app/core/usecase/usecase.dart';
import 'package:clean_arch_flutter_bloc_news_app/features/articles/domain/entities/article_entity.dart';
import 'package:clean_arch_flutter_bloc_news_app/features/articles/domain/repositories/article_repository.dart';
import 'package:dartz/dartz.dart';

class GetArticleUseCase implements UseCase<List<ArticleEntity>, NoParams>{
  final ArticleRepository repository;
  GetArticleUseCase({required this.repository});

  @override
  Future<Either<Failure, List<ArticleEntity>>> call(NoParams params) async{
    return await repository.getNewsArticle();
  }

}