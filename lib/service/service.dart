import 'dart:convert';
import 'package:bbc_news/pages/tab/topStories/model/top_news.dart';
import 'package:http/http.dart';
import 'package:http/http.dart' as http;
import 'package:logger/logger.dart';

import '../pages/tab/topStories/model/news_list.dart';

class Services {
  static const String URL = "https://newsapi.org/v2/everything?q=tesla&from=2023-06-23&sortBy=publishedAt&apiKey=268bad56779848119747cb5cf10733a6";

  /// Http
  static Future<NewsList?> GET() async {
    var logger = Logger();
    final response = await http.get(Uri.parse(URL));
    if (response.statusCode == 200) {
      logger.e(response);
      final Map<String, dynamic> json = jsonDecode(response.body);
      final NewsList topNews = NewsList.fromJson(json);
      return topNews;
    }
    return null;
  }



  // static List<ArticleList> parseOfNewsList(String response){
  //   dynamic json = jsonDecode(response);
  //   var newsData = List<ArticleList>.from(json.map((data)=>ArticleList.fromJson(data)));
  //   return newsData;
  // }
}
