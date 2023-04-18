import 'package:bbc_news/components/appImage.dart';
import 'package:flutter/material.dart';

class Live extends StatefulWidget {
  const Live({Key? key}) : super(key: key);
  static const String id = "live";

  @override
  State<Live> createState() => _LiveState();
}

class _LiveState extends State<Live> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: const Color(0xffcbcbcb),
        body: ListView(
          children: [
            _liveVideo(video: AppImage.bbcLogo1, videoTitle: "BBC World News",),
            _liveVideoInfo(overallTitle: "BBC World Service", date: "2 may 2015", descriptions: "International news, analysis and features from the BBC World Service International news, analysis and features from the BBC World Service",copyright: "Copyright 2015 BBC"),
          ],
        ));
  }

  Widget _liveVideo({video, videoTitle}) {
    return Container(
      margin:  const EdgeInsets.only(top: 6),
      //color: Colors.black26,
      color: const Color(0xbdcbcbcb),
      width: MediaQuery.of(context).size.width,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          //#video
          Container(
            height: 250,
            width: double.infinity,
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage(video),
                fit: BoxFit.cover
              ),
            ),
          ),
          //#videoTitle
          Container(
            padding: const EdgeInsets.only(left: 5,right: 5,top: 10,bottom: 10),
            child: Text(videoTitle,style: const TextStyle(color: Colors.black,fontWeight: FontWeight.normal,fontSize: 16),),
          ),

        ],
      ),
    );
  }

  Widget _liveVideoInfo({overallTitle, date, descriptions, copyright}) {
    return Container(
      width: double.infinity,
      height: 475,
      color: const Color(0x99ffffff),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          //#overallTitle, date, descriptions,
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              //#overallTitle
              Container(
                padding:const EdgeInsets.only(left: 6,right: 6,top: 20,bottom: 15),
                child: Text(overallTitle,style: const TextStyle(color: Colors.black,fontSize: 24,fontWeight: FontWeight.bold),),
              ),
              //#date
              Container(
                padding:const EdgeInsets.only(left: 6,right: 6,bottom: 10),
                child: Text(date,style: const TextStyle(color: Colors.black54,fontSize: 16,fontWeight: FontWeight.normal),),
              ),
              //#descriptions
              Container(
                padding:const EdgeInsets.only(left: 6,right: 6),
                child: Text(descriptions,style: const TextStyle(color: Colors.black54,fontWeight: FontWeight.normal,fontSize: 17),),
              ),
            ],
          ),
         //#copyright
         Container(
           margin: const EdgeInsets.only(bottom: 20),
           child: Center(
             child: Text(copyright,style: const TextStyle(color: Colors.black54,fontSize: 17,fontWeight: FontWeight.normal),),
           ),
         )
        ],
      ),
    );
  }
}
