import 'package:bbc_news/components/appImage.dart';
import 'package:flutter/material.dart';

class Video extends StatefulWidget {
  const Video({Key? key}) : super(key: key);
  static const String id = "video";

  @override
  State<Video> createState() => _VideoState();
}

class _VideoState extends State<Video> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffcbcbcb),
      body: ListView(
        children: [
          _videoTopData(video: AppImage.mud ,title: "One-minute World News",day: "6 days ago"),
          _videoList(video: AppImage.mud,title: "South Florida endures 'life threatening' floods",day: "2d",content: "News"),
          _videoList(video: AppImage.chelsea,title: "South Florida endures 'life threatening' floods",day: "2d",content: "News"),
          _videoList(video: AppImage.mud,title: "South Florida endures 'life threatening' floods",day: "2d",content: "News"),
          _videoList(video: AppImage.arsenal,title: "South Florida endures 'life threatening' floods",day: "2d",content: "News"),
          _videoList(video: AppImage.mud,title: "South Florida endures 'life threatening' floods",day: "2d",content: "News"),
          _videoList(video: AppImage.logo,title: "South Florida endures 'life threatening' floods",day: "2d",content: "News"),
          _videoList(video: AppImage.mud,title: "South Florida endures 'life threatening' floods",day: "2d",content: "News"),
        ],
      ),
    );
  }

  Widget _videoTopData({video, title, day}) {
    return Container(
      color: Colors.white,
      margin: const EdgeInsets.only(left: 5,right: 5),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            height:190,
            width: MediaQuery.of(context).size.width,
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage(video),
                fit: BoxFit.cover
              ),
            ),
          ),
          const SizedBox(height: 8,),
          Container(
            padding: const EdgeInsets.only(left: 8,right: 8),
            child: Text(title,style: const TextStyle(color: Colors.black,fontSize: 22,fontWeight: FontWeight.bold),),
          ),
          const SizedBox(height: 32,),
          Container(
            padding: const EdgeInsets.only(left: 8,right: 8),
            margin: const EdgeInsets.only(bottom: 8),
            child: Text(day,style: const TextStyle(color: Colors.black54,fontWeight: FontWeight.normal,fontSize: 17),),
          )
        ],
      ),
    );
  }

  Widget _videoList({video,title,day,content}){
    return Container(
      color: Colors.white,
      margin: const EdgeInsets.only(left: 5,right: 5,top: 5),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          //#Top Video
          Container(
            height: 120,
            width:  190,
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage(video),
                fit: BoxFit.cover
              )
            ),
          ),
          const SizedBox(width: 10,),
          //# title,day,content
          Expanded(
              child:Container(
                margin: const EdgeInsets.all(3),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    //#title
                    Column(
                      children: [
                        Text(title,style: const TextStyle(color: Colors.black,fontSize: 17,fontWeight: FontWeight.bold),),
                      ],
                    ),
                    //#day & content
                    Row(
                      children: [
                        //#day
                        Text(day,style: const TextStyle(color: Colors.black54,fontSize: 16),),
                        const SizedBox(width: 4,),
                        const Text("|"),
                        const SizedBox(width: 4,),
                        Text(content,style: const TextStyle(color: Colors.redAccent,fontSize: 16),),

                      ],
                    )
                  ],
                ),
              )
          )

        ],
      ),
    );
  }
}
