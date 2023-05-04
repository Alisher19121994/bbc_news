import 'package:bbc_news/generated/json/base/json_field.dart';
import 'package:bbc_news/generated/json/news_entity.g.dart';
import 'dart:convert';

@JsonSerializable()
class NewsEntity {
  late String status;
  late int totalResults;
  late List<NewsArticles> articles;

  NewsEntity();

  factory NewsEntity.fromJson(Map<String, dynamic> json) =>
      $NewsEntityFromJson(json);

  Map<String, dynamic> toJson() => $NewsEntityToJson(this);

  @override
  String toString() {
    return jsonEncode(this);
  }
}

@JsonSerializable()
class NewsArticles {
  @JSONField(name: "source")
  late NewsArticlesSource xSource;
  String? author;
  String? title;
  late String description;
  late String url;
  String? urlToImage;
  late String? publishedAt;
  late String content;

  NewsArticles({this.title, this.urlToImage, this.publishedAt, this.author});

  factory NewsArticles.fromJson(Map<String, dynamic> json) {
    return NewsArticles(
      title: json['title'],
      urlToImage: json['urlToImage'],
      publishedAt: json['publishedAt'],
      author: json['author'],
    );
  }

  Map<String, dynamic> toJson() => $NewsArticlesToJson(this);

  @override
  String toString() {
    return jsonEncode(this);
  }
}

@JsonSerializable()
class NewsArticlesSource {
  late String id;
  late String name;

  NewsArticlesSource();

  factory NewsArticlesSource.fromJson(Map<String, dynamic> json) =>
      $NewsArticlesSourceFromJson(json);

  Map<String, dynamic> toJson() => $NewsArticlesSourceToJson(this);

  @override
  String toString() {
    return jsonEncode(this);
  }
}
