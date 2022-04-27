// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'latest_news_article_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

LatestNewsArticleModel _$LatestNewsArticleModelFromJson(
        Map<String, dynamic> json) =>
    LatestNewsArticleModel(
      results: (json['results'] as List<dynamic>)
          .map((e) => NewsArticleModel.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$LatestNewsArticleModelToJson(
        LatestNewsArticleModel instance) =>
    <String, dynamic>{
      'results': instance.results,
    };
