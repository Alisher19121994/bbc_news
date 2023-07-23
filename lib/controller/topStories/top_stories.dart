import 'dart:convert';

import 'package:flutter/cupertino.dart';
import 'package:logger/logger.dart';
import '../../pages/tab/topStories/model/news_list.dart';
import '../../pages/tab/topStories/model/top_news.dart';
import '../../service/service.dart';

class TopStoriesController extends ChangeNotifier {
  var isLoading = false;
  ArticleList articles = ArticleList();
  List<ArticleList> articleList = [];

  var logger = Logger();

  void apiNewsList() async {
    isLoading = true;
    notifyListeners();
    final response = await Services.GET();
    if (response != null) {
      print("bu malumot: $response");
      articleList = response.articles!;
      logger.w(response);
    } else {
      isLoading = false;
      notifyListeners();
    }
  }
}
