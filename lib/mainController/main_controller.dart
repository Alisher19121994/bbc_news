import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:bbc_news/network/api_service.dart';
import 'package:get/get.dart';
import 'package:logger/logger.dart';

import '../pages/tab/topStories/model/news_entity.dart';

class MainController extends GetxController {
  MainController() {
    getNews();
  }
  static const String URLsS = "newsapi.org/v2/everything?q=tesla&from=2023-04-04&sortBy=publishedAt&apiKey=778edef0946f4dc9923f9befe47a8402";


  var isLoading = false.obs;
  var news = [].obs;
  var logger = Logger();

  loadingProgress() {
    isLoading.value = !isLoading.value;
  }

  getNews() async {
    logger.w("xato!");
    loadingProgress();
    news.value = await ApiService.fetchData();
    loadingProgress();
  }
}
