import 'dart:convert';
import 'package:bbc_news/pages/tab/topStories/model/top_news.dart';
import 'package:http/http.dart';
import 'package:http/http.dart' as http;
import 'package:logger/logger.dart';

class Services {
  static const String URL = "https://newsapi.org/v2/everything?q=tesla&from=2023-04-04&sortBy=publishedAt&apiKey=778edef0946f4dc9923f9befe47a8402";
  //static const String URL = "newsapi.org/v2/everything?q=tesla&from=2023-04-04&sortBy=publishedAt&apiKey=";

  /// Http Apis
  static String apiNewsList = "778edef0946f4dc9923f9befe47a8402";

  /// Http
  static Future<TopNews?> GET() async {
    var logger = Logger();
   // var uri = Uri.http(URL, api, params);
    final response = await http.get(Uri.parse(URL));
  //  var response = await get(uri, headers: {'Content-Type': 'application/json; charset=UTF-8'});
    if (response.statusCode == 200) {
      logger.e(response);
        final Map<String, dynamic> body = jsonDecode(response.body);
        final TopNews topNews = TopNews.fromJson(body);
      return topNews;
    }
  }

  static Map<String, String> paramsEmpty() {
    Map<String, String> params = {};
    return params;
  }

  // static List<Articles> parseOfNewsList(String response){
  //   dynamic json = jsonDecode(response);
  //   var newsData = List<Articles>.from(json.map((data)=>Articles.fromJson(data)));
  //   return newsData;
  // }
}
