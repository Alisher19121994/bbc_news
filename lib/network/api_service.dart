import 'dart:convert';
import 'package:bbc_news/pages/tab/topStories/model/news_entity.dart';
import 'package:dio/dio.dart';
import 'package:http/http.dart';
import 'package:http/http.dart' as http;

class ApiService {
  static const String URL = "https://newsapi.org/v2/everything?q=tesla&from=2023-04-04&sortBy=publishedAt&apiKey=778edef0946f4dc9923f9befe47a8402";
 // static const String URLsS = "newsapi.org/v2/everything?q=tesla&from=2023-04-04&sortBy=publishedAt&apiKey=778edef0946f4dc9923f9befe47a8402";
//  static const String URL = "newsapi.org";
//  Dio dio = Dio();

//  static String api_list = "/v2/everything?q=tesla&from=2023-04-04&sortBy=publishedAt&apiKey=778edef0946f4dc9923f9befe47a8402";

  static Future fetchData() async {
    final response = await http.get(Uri.parse(URL));
    final Map<String, dynamic> body = jsonDecode(response.body);
    final NewsEntity article = NewsEntity.fromJson(body);
  }

//    Future<List?> GETlist(String api, Map<String, String> params) async {
//   var uri = Uri.https(URL, api,params);
//   var response = await get(uri,headers:{'Content-Type' :'application/json; charset=UTF-8'});
//   if(response.statusCode ==200){
//         var parsed = jsonDecode(response.body);
//         List newList = parsed.map((e) => NewsArticles.fromJson(e)).toList();
//         return newList;
//   }
//   return null;
// }
//
//  Map<String,String> paramsEmpty(){
//   Map<String,String> params = {};
//   return params;
// }

// Future getNews() async {
//   var response = await dio.get(URLs);
//   if (response.statusCode == 200) {
//     var parsed = jsonDecode(response.data);
//     List<NewsArticles> newList =
//         parsed.map((e) => NewsArticles.fromJson(e)).toList();
//     return newList;
//   }
// }
//
// Future getSingleNews(int id) async {
//   Response response = await dio.get(URL);
//   if (response.statusCode == 200) {
//     List getSingleNewsData =
//         response.data.map((e) => NewsArticles.fromJson(e)).toList();
//     return getSingleNewsData;
//   }
}
