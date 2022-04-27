import 'package:json_annotation/json_annotation.dart';
import 'package:parsing/model/news_article_model.dart';

part 'latest_news_article_model.g.dart';

@JsonSerializable()
class LatestNewsArticleModel {
  final List<NewsArticleModel> results;

  LatestNewsArticleModel({
    required this.results,
  });

  factory LatestNewsArticleModel.fromJson(Map<String, dynamic> json) =>
      _$LatestNewsArticleModelFromJson(json);

  Map<String, dynamic> toJson() => _$LatestNewsArticleModelToJson(this);
}
