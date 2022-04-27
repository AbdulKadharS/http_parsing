import 'package:json_annotation/json_annotation.dart';

part 'news_article_model.g.dart';

@JsonSerializable()
class NewsArticleModel {
  final String section;
  final String subsection;
  final String title;
  final String abstract;

  NewsArticleModel({
    required this.abstract,
    required this.section,
    required this.subsection,
    required this.title,
  });

  factory NewsArticleModel.fromJson(Map<String, dynamic> json) =>
      _$NewsArticleModelFromJson(json);

  Map<String, dynamic> toJson() => _$NewsArticleModelToJson(this);
}
