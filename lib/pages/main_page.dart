import 'package:bbc_news/components/appImage.dart';
import 'package:bbc_news/pages/drawer/drawer_page.dart';
import 'package:bbc_news/pages/tab/live/live.dart';
import 'package:bbc_news/pages/tab/myNews/my_news.dart';
import 'package:bbc_news/pages/tab/popular/popular.dart';
import 'package:bbc_news/pages/tab/topStories/top_stories.dart';
import 'package:bbc_news/pages/tab/video/video.dart';
import 'package:flutter/material.dart';

class MainPage extends StatefulWidget {
  const MainPage({Key? key}) : super(key: key);

  static const String id = "mainPage";

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 5,
      child: Scaffold(
        drawer: const DrawerPage(),
        appBar: AppBar(
          elevation: 0,
          backgroundColor: const Color(0xffa01213),
          centerTitle: true,
          title: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: const [
              Text("BBC News",style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 24,))
            ],
          ),
          actions: [
            IconButton(
                onPressed: (){},
                icon: const Icon(Icons.search,color: Colors.white,)
            ),
            IconButton(
                onPressed: (){},
                icon: const Icon(Icons.more_vert,color: Colors.white,)
            )
          ],
          bottom: const TabBar(
            isScrollable: true,
              indicatorColor: Colors.white,
              unselectedLabelStyle: TextStyle(color: Colors.white,fontWeight: FontWeight.normal,fontSize: 14),
              labelStyle: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 17),
              tabs: [
                Tab(child: Text("Top Stories",style: TextStyle(color: Colors.white),),),
                Tab(child: Text("Video",style: TextStyle(color: Colors.white),),),
                Tab(child: Text("My News",style: TextStyle(color: Colors.white),),),
                Tab(child: Text("Popular",style: TextStyle(color: Colors.white),),),
                Tab(child: Text("Live",style: TextStyle(color: Colors.white),),),
              ]
          ),
        ),
        body: const TabBarView(
          children: [
            TopStories(),
            Video(),
            MyNews(),
            Popular(),
            Live(),
          ],
        ),

      ),
    );
  }
}
