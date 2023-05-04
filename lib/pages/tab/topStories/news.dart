class News {
  String? status;
  int? totalResults;
  List<NewsList>? articles;

  News(this.status, this.articles, this.totalResults);

  News.fromJson(Map<String, dynamic> json)
      : status = json['status'],
        totalResults = json['totalResults'],
        articles = json['articles'];
}

class NewsList {
  String? author;
  String? title;
  late String description;
  late String url;
  String? urlToImage;
  late String? publishedAt;
  late String content;

  NewsList({this.title, this.urlToImage, this.publishedAt, this.author});
}
