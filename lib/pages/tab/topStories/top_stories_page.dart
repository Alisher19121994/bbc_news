import 'package:bbc_news/bloc/topStories/cubit/news_list_cubit.dart';
import 'package:bbc_news/bloc/topStories/state/news_list_state.dart';
import 'package:bbc_news/pages/tab/topStories/model/top_news.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:http/http.dart' as http;

import '../widgets/topStories/news_home.dart';

class TopStories extends StatefulWidget {
  const TopStories({Key? key}) : super(key: key);
  static const String id = "topStories";

  @override
  State<TopStories> createState() => _TopStoriesState();
}

class _TopStoriesState extends State<TopStories> {
  List<Articles> articleList = [];

  @override
  void initState() {
    super.initState();
    BlocProvider.of<NewsListOfCubit>(context).apiNewsList();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffcbcbcb),
      body: BlocBuilder<NewsListOfCubit, NewsListOfState>(
        builder: (BuildContext context, NewsListOfState newsListOfState) {
          if (newsListOfState is NewsListError) {
            return newsHome(articleList, true);
          }
          if (newsListOfState is NewsListLoaded) {
            articleList = newsListOfState.articles;
            return newsHome(articleList, false);
          }
          return newsHome(articleList, true);
        },
      ),
    );
  }
}
