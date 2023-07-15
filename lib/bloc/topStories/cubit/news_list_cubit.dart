import 'package:bbc_news/bloc/topStories/state/news_list_state.dart';
import 'package:bbc_news/pages/tab/topStories/model/top_news.dart';
import 'package:bbc_news/service/service.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:logger/logger.dart';

class NewsListOfCubit extends Cubit<NewsListOfState> {
  NewsListOfCubit() : super(NewsListInit());

  void apiNewsList() async {
    emit(NewsListLoading());
    final response = await Services.GET();
    if (response != null) {
      var logger = Logger();
      logger.w(response);
      emit(NewsListLoaded(articles: response as List<Articles>));
    } else {
      emit(NewsListError(error: 'Loading error'));
    }
  }
}
