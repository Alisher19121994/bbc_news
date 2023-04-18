import 'package:bbc_news/components/appImage.dart';
import 'package:flutter/material.dart';

class Popular extends StatefulWidget {
  const Popular({Key? key}) : super(key: key);
  static final String id = "popular";

  @override
  State<Popular> createState() => _PopularState();
}

class _PopularState extends State<Popular> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: const Color(0xffcbcbcb),
        body: ListView(
          children: [
            _popularTitle(title: "Most Read"),
            _popularList(
                image: AppImage.arsenal,
                title: "Former Indian PM shot dead live on TV",
                time: "2h",
                location: "India"),
            _popularList(
                image: AppImage.chelsea,
                title: "Former Indian PM shot dead live on TV",
                time: "2h",
                location: "India"),
            _popularList(
                image: AppImage.ali,
                title: "Former Indian PM shot dead live on TV",
                time: "2h",
                location: "India"),
            _popularList(
                image: AppImage.logo,
                title: "Former Indian PM shot dead live on TV",
                time: "2h",
                location: "India"),
            _popularList(
                image: AppImage.bbcLogo1,
                title: "Former Indian PM shot dead live on TV",
                time: "2h",
                location: "India"),
            _popularList(
                image: AppImage.chelsea,
                title: "Former Indian PM shot dead live on TV",
                time: "2h",
                location: "India"),
            _popularList(
                image: AppImage.ali,
                title: "Former Indian PM shot dead live on TV",
                time: "2h",
                location: "India"),
            _popularList(
                image: AppImage.arsenal,
                title: "Former Indian PM shot dead live on TV",
                time: "2h",
                location: "India"),
            _popularList(
                image: AppImage.chelsea,
                title: "Former Indian PM shot dead live on TV",
                time: "2h",
                location: "India"),
          ],
        ));
  }

  Widget _popularList({image, title, time, location}) {
    return Container(
      color: Colors.white,
      margin: const EdgeInsets.only(left: 5, right: 5, top: 5),
      child: Row(

        children: [
          //#image
          Container(
            height: 120,
            width: 190,
            decoration: BoxDecoration(
                image: DecorationImage(
                    image: AssetImage(image), fit: BoxFit.cover)),
          ),
          const SizedBox(
            width: 10,
          ),
          //#title, time, location
          Expanded(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  //#title
                  Text(title,style: const TextStyle(color: Colors.black,fontWeight: FontWeight.bold,fontSize: 17),),
                  //#time & location
                  Row(
                    children: [
                      Text(time,style: const TextStyle(color: Colors.black54,fontSize: 16,fontWeight: FontWeight.normal),),
                      const SizedBox(
                        width: 4,
                      ),
                      const Text("|"),
                      const SizedBox(
                        width: 4,
                      ),
                      Text(location,style: const TextStyle(color: Colors.redAccent,fontSize: 16,fontWeight: FontWeight.normal),),

                    ],
                  )
                ],
              )
          )
        ],
      ),
    );
  }

  Widget _popularTitle({title}) {
    return Container(
      margin: const EdgeInsets.all(5),
      child: Text(
        title,
        style: const TextStyle(
            color: Colors.black, fontSize: 20, fontWeight: FontWeight.bold),
      ),
    );
  }
}
