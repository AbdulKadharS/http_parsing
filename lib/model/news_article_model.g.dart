// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'news_article_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

NewsArticleModel _$NewsArticleModelFromJson(Map<String, dynamic> json) =>
    NewsArticleModel(
      abstract: json['abstract'] as String,
      section: json['section'] as String,
      subsection: json['subsection'] as String,
      title: json['title'] as String,
    );

Map<String, dynamic> _$NewsArticleModelToJson(NewsArticleModel instance) =>
    <String, dynamic>{
      'section': instance.section,
      'subsection': instance.subsection,
      'title': instance.title,
      'abstract': instance.abstract,
    };
