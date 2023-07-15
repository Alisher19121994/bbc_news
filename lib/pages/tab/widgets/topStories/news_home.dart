import 'package:bbc_news/pages/tab/topStories/model/top_news.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'news_of_list.dart';

/// newsHome is involved in List of news with CircularProgressIndicator in the Center
Widget newsHome(List<Articles> articleList, bool isLoading) {
  return Stack(
    children: [
      ListView.builder(
        itemCount: articleList.length,
        itemBuilder: (BuildContext context, int index) {
          return newsOfList(articleList as Articles);
        },
      ),
      isLoading
          ? const Center(
              child: CircularProgressIndicator(),
            )
          : const SizedBox.shrink()
    ],
  );
}
