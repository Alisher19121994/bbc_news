import 'package:bbc_news/generated/json/base/json_convert_content.dart';
import 'package:bbc_news/pages/tab/topStories/model/news_entity.dart';

NewsEntity $NewsEntityFromJson(Map<String, dynamic> json) {
	final NewsEntity newsEntity = NewsEntity();
	final String? status = jsonConvert.convert<String>(json['status']);
	if (status != null) {
		newsEntity.status = status;
	}
	final int? totalResults = jsonConvert.convert<int>(json['totalResults']);
	if (totalResults != null) {
		newsEntity.totalResults = totalResults;
	}
	final List<NewsArticles>? articles = jsonConvert.convertListNotNull<NewsArticles>(json['articles']);
	if (articles != null) {
		newsEntity.articles = articles;
	}
	return newsEntity;
}

Map<String, dynamic> $NewsEntityToJson(NewsEntity entity) {
	final Map<String, dynamic> data = <String, dynamic>{};
	data['status'] = entity.status;
	data['totalResults'] = entity.totalResults;
	data['articles'] =  entity.articles.map((v) => v.toJson()).toList();
	return data;
}

NewsArticles $NewsArticlesFromJson(Map<String, dynamic> json) {
	final NewsArticles newsArticles = NewsArticles();
	final NewsArticlesSource? xSource = jsonConvert.convert<NewsArticlesSource>(json['source']);
	if (xSource != null) {
		newsArticles.xSource = xSource;
	}
	final String? author = jsonConvert.convert<String>(json['author']);
	if (author != null) {
		newsArticles.author = author;
	}
	final String? title = jsonConvert.convert<String>(json['title']);
	if (title != null) {
		newsArticles.title = title;
	}
	final String? description = jsonConvert.convert<String>(json['description']);
	if (description != null) {
		newsArticles.description = description;
	}
	final String? url = jsonConvert.convert<String>(json['url']);
	if (url != null) {
		newsArticles.url = url;
	}
	final String? urlToImage = jsonConvert.convert<String>(json['urlToImage']);
	if (urlToImage != null) {
		newsArticles.urlToImage = urlToImage;
	}
	final String? publishedAt = jsonConvert.convert<String>(json['publishedAt']);
	if (publishedAt != null) {
		newsArticles.publishedAt = publishedAt;
	}
	final String? content = jsonConvert.convert<String>(json['content']);
	if (content != null) {
		newsArticles.content = content;
	}
	return newsArticles;
}

Map<String, dynamic> $NewsArticlesToJson(NewsArticles entity) {
	final Map<String, dynamic> data = <String, dynamic>{};
	data['source'] = entity.xSource.toJson();
	data['author'] = entity.author;
	data['title'] = entity.title;
	data['description'] = entity.description;
	data['url'] = entity.url;
	data['urlToImage'] = entity.urlToImage;
	data['publishedAt'] = entity.publishedAt;
	data['content'] = entity.content;
	return data;
}

NewsArticlesSource $NewsArticlesSourceFromJson(Map<String, dynamic> json) {
	final NewsArticlesSource newsArticlesSource = NewsArticlesSource();
	final String? id = jsonConvert.convert<String>(json['id']);
	if (id != null) {
		newsArticlesSource.id = id;
	}
	final String? name = jsonConvert.convert<String>(json['name']);
	if (name != null) {
		newsArticlesSource.name = name;
	}
	return newsArticlesSource;
}

Map<String, dynamic> $NewsArticlesSourceToJson(NewsArticlesSource entity) {
	final Map<String, dynamic> data = <String, dynamic>{};
	data['id'] = entity.id;
	data['name'] = entity.name;
	return data;
}