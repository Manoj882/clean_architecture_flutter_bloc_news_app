import 'package:clean_arch_flutter_bloc_news_app/features/articles/domain/entities/article_entity.dart';
import 'package:json_annotation/json_annotation.dart';

part 'article_model.g.dart';


@JsonSerializable()
class ArticleModel extends ArticleEntity {
  final SourceModel? source;
  final String? author;
  final String? title;
  final String? description;
  final String? url;
  final String? urlToImage;
  final DateTime? publishedAt;
  final String? content;

  const ArticleModel({
    this.source,
    this.author,
    this.title,
    this.description,
    this.url,
    this.urlToImage,
    this.publishedAt,
    this.content,
  });

  factory ArticleModel.fromJson(Map<String, dynamic> json) => _$ArticleModelFromJson(json);
  Map<String, dynamic> toJson() => _$ArticleModelToJson(this);


}

@JsonSerializable()
class SourceModel extends Source {
  final String? id;
  final String? name;

  const SourceModel({this.id, this.name});

  factory SourceModel.fromJson(Map<String, dynamic> json) => _$SourceModelFromJson(json);
  Map<String, dynamic> toJson() => _$SourceModelToJson(this);
}
