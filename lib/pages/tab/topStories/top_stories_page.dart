import 'package:bbc_news/controller/topStories/top_stories.dart';
import 'package:bbc_news/pages/tab/topStories/model/top_news.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:http/http.dart' as http;
import '../widgets/topStories/news_of_list.dart';

class TopStories extends StatefulWidget {
  const TopStories({Key? key}) : super(key: key);
  static const String id = "topStories";

  @override
  State<TopStories> createState() => _TopStoriesState();
}

class _TopStoriesState extends State<TopStories> {
  TopStoriesController topStoriesController = TopStoriesController();

  @override
  void initState() {
    super.initState();
    topStoriesController.apiNewsList();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffcbcbcb),
      body: ChangeNotifierProvider(
        create: (BuildContext context) => topStoriesController,
        child: Consumer<TopStoriesController>(
          builder: (context, model, index) => Stack(
            children: [
              ListView.builder(
                itemCount: topStoriesController.articleList.length,
                itemBuilder: (context, int index) {
                  //return listOfNews(topStoriesController.articleList[index] as TopStoriesController);
                 return Container(
                    margin:
                    const EdgeInsets.only(top: 5),
                    color: Colors.white,
                    height: 110,
                    width: double.infinity,
                    child: Row(
                      children: [
                        //#image
                        Container(
                          color: Colors.black12,
                          //height: MediaQuery.of(context).size.height,
                          width: 190,
                          child: Image.network(topStoriesController.articleList[index].urlToImage??'',),
                        ),
                        const SizedBox(width: 10,),
                        //#title & time,location
                        Expanded(
                          child: Container(
                            margin: const EdgeInsets.only(top: 6,bottom: 6,right: 6),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                const SizedBox(height: 17,),
                                //#title
                                Text(
                                    topStoriesController.articleList[index].title??"",style: const TextStyle(color: Colors.black,fontSize: 17,fontWeight: FontWeight.bold),overflow: TextOverflow.ellipsis,),
                                //#time & location
                                Expanded(
                                  child: Row(
                                    crossAxisAlignment: CrossAxisAlignment.end,
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    children: [
                                      //# time
                                      Text(topStoriesController.articleList[index].publishedAt??""
                                        ,style: const TextStyle(color: Colors.black54,fontSize: 10,fontWeight: FontWeight.normal),),
                                      const SizedBox(width: 2,),
                                      const Text("|"),
                                      const SizedBox(width: 2,),
                                      //#location
                                      Text(topStoriesController.articleList[index].author??""
                                        ,style: const TextStyle(color: Colors.red,fontSize: 10,fontWeight: FontWeight.normal)
                                        ,overflow: TextOverflow.ellipsis,),

                                    ],
                                  ),
                                ),
                                const SizedBox(height: 17,),
                              ],
                            ),
                          ),
                        )
                      ],
                    ),
                  );
                },
              ),
              topStoriesController.isLoading
                  ? const Center(
                      child: CircularProgressIndicator(),
                    )
                  : const SizedBox.shrink(),
            ],
          ),
        ),
      ),
    );
  }
}
