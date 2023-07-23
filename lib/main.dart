import 'package:bbc_news/pages/drawer/drawer_page.dart';
import 'package:bbc_news/pages/main_page.dart';
import 'package:bbc_news/pages/splash/splash_page.dart';
import 'package:bbc_news/pages/tab/live/live.dart';
import 'package:bbc_news/pages/tab/myNews/my_news.dart';
import 'package:bbc_news/pages/tab/popular/popular.dart';
import 'package:bbc_news/pages/tab/topStories/nextClickedPage/data_page.dart';
import 'package:bbc_news/pages/tab/topStories/top_stories_page.dart';
import 'package:bbc_news/pages/tab/video/video.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'BBC',
      theme: ThemeData(
        primarySwatch: Colors.red,
      ),
      home: const SplashPage(),
      routes: {
        MainPage.id: (context) => const MainPage(),
        TopStories.id: (context) => const TopStories(),
        Video.id: (context) => const Video(),
        MyNews.id: (context) => const MyNews(),
        Popular.id: (context) => const Popular(),
        Live.id: (context) => const Live(),
        DrawerPage.id: (context) => const DrawerPage(),
        NewsReadablePage.id: (context) => const NewsReadablePage(),
      },
    );
  }
}
