import 'package:bbc_news/pages/tab/topStories/model/top_news.dart';
import 'package:flutter/material.dart';

Widget newsOfList(Articles articles){
  return GestureDetector(
    onTap: (){
     // Navigator.pushNamed(context, DataReadablePage.id);
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
           // height: MediaQuery.of(context).size.height,
            width: 190,
            decoration: BoxDecoration(
                image: DecorationImage(
                    image: AssetImage(articles.urlToImage??''),
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
                      articles.title??"",style: const TextStyle(color: Colors.black,fontSize: 14,fontWeight: FontWeight.bold)),
                  //#time & location
                  Row(
                    children: [
                      //# time
                      Text("2h",style: const TextStyle(color: Colors.black54,fontSize: 16,fontWeight: FontWeight.normal),),
                      const SizedBox(width: 4,),
                      const Text("|"),
                      const SizedBox(width: 4,),
                      //#location
                      Text(articles.author??"",style: const TextStyle(color: Colors.red,fontSize: 16,fontWeight: FontWeight.normal),),

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