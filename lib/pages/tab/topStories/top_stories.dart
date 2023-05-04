import 'dart:convert';

import 'package:bbc_news/components/appImage.dart';
import 'package:bbc_news/mainController/main_controller.dart';
import 'package:bbc_news/pages/tab/topStories/model/news_entity.dart';
import 'package:bbc_news/pages/tab/topStories/subData/data_page.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:http/http.dart' as http;
import 'package:get/get_core/src/get_main.dart';
import 'package:logger/logger.dart';

class TopStories extends StatefulWidget {
  const TopStories({Key? key}) : super(key: key);
  static const String id = "topStories";
  @override
  State<TopStories> createState() => _TopStoriesState();
}

class _TopStoriesState extends State<TopStories> {
  var logger = Logger();

  List<NewsArticles> articles = [];
@override
  void initState() {
    super.initState();
    fetchData();
  }
  void fetchData() async {
    final response = await http.get(Uri.parse("https://newsapi.org/v2/everything?q=tesla&from=2023-04-04&sortBy=publishedAt&apiKey=778edef0946f4dc9923f9befe47a8402"));
    final Map<String, dynamic> body = jsonDecode(response.body);
    final NewsEntity article = NewsEntity.fromJson(body);
    setState(() {
      articles = article.articles.cast<NewsArticles>();
    });
  }

  @override
  Widget build(BuildContext context) {
    MainController mainController = Get.put(MainController());

    return Scaffold(
      backgroundColor: const Color(0xffcbcbcb),
      body:ListView.builder(
          itemCount: articles.length,
          //  shrinkWrap: true,
          itemBuilder: (BuildContext context,int index){
            return _newsPage(articles[index]);
          }
      )
    );
  }

  Widget _newsPage(NewsArticles newsArticles){

    return GestureDetector(
      onTap: (){
        Navigator.pushNamed(context, DataReadablePage.id);
      },
      child: Container(
          margin:
          const EdgeInsets.only(top: 5),
          color: Colors.white,
          height: 110,
          width: double.infinity,
          child: Row(
            children: [
              //#image
              Container(
                height: MediaQuery.of(context).size.height,
                width: 190,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage(newsArticles.urlToImage??""),
                    fit: BoxFit.cover
                  )
                ),
              ),
              const SizedBox(width: 10,),
              //#title & time,location
              Expanded(
                child: Container(
                //  width: MediaQuery.of(context).size.width,
                  margin: const EdgeInsets.only(top: 6,bottom: 6,right: 6),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        //#title
                        Text(
                            newsArticles.title??"",style: const TextStyle(color: Colors.black,fontSize: 14,fontWeight: FontWeight.bold)),
                        //#time & location
                        Row(
                          children: [
                            //# time
                            Text("2h",style: const TextStyle(color: Colors.black54,fontSize: 16,fontWeight: FontWeight.normal),),
                            const SizedBox(width: 4,),
                            const Text("|"),
                            const SizedBox(width: 4,),
                            //#location
                            Text(newsArticles.author??"",style: const TextStyle(color: Colors.red,fontSize: 16,fontWeight: FontWeight.normal),),

                          ],
                        )
                      ],
                    ),

                ),
              )
            ],
          ),
        ),
    );
}
  Widget _newsItem({image,title,time,location}){
    return Container(
      color: Colors.white,
      height: 300,
      width: double.infinity,
      child: Column(
        children: [
          //#on the top news image
          Container(
            height: 200,
            width: double.infinity,
            decoration: BoxDecoration(
                image: DecorationImage(
                    image: AssetImage(image),
                    fit: BoxFit.cover
                )
            ),

          ),
          const SizedBox(height: 7,),
          //#title
         Container(
           margin: const EdgeInsets.only(left: 8,right: 8),
           child:  Text(
             title,style: const TextStyle(color: Colors.black,fontSize: 20,fontWeight: FontWeight.bold),),
         ),
          const SizedBox(height: 20,),
         Container(
           margin: const EdgeInsets.only(left: 8,right: 8),
           child:  Row(
             mainAxisAlignment: MainAxisAlignment.start,
             children: [
               //# time
               Text(time,style: const TextStyle(color: Colors.black54,fontSize: 16,fontWeight: FontWeight.normal),),
               const SizedBox(width: 4,),
               const Text("|"),
               const SizedBox(width: 4,),
               //#location
               Text(location,style: const TextStyle(color: Colors.red,fontSize: 16,fontWeight: FontWeight.normal),)
             ],
           ),
         )
        ],
      ),
    );
}
}
