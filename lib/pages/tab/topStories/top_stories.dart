import 'package:bbc_news/components/appImage.dart';
import 'package:bbc_news/pages/tab/widgets/news_top_page.dart';
import 'package:flutter/material.dart';

class TopStories extends StatefulWidget {
  const TopStories({Key? key}) : super(key: key);
  static final String id = "topStories";
  @override
  State<TopStories> createState() => _TopStoriesState();
}

class _TopStoriesState extends State<TopStories> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffcbcbcb),
      body: Container(
        margin: const EdgeInsets.only(left: 5,right: 5,bottom: 10),
        child: ListView(

          children: [
            _newsItem(image: AppImage.chelsea,title: "BBC World News TV: How could Potter win the match?",time: "2 hours age",location: "US & Canada"),

            _newsPage(image: AppImage.mud,title: "Stellantis",time: "3h",location: "Asia"),
            _newsPage(image: AppImage.ali,title: "Stellantis retains strong pricing power in North America",time: "4h",location: "Asia"),
            _newsPage(image: AppImage.bbcLogo1,title: "Stellantis retains strong pricing power in North America",time: "5h",location: "Asia"),
            _newsPage(image: AppImage.arsenal,title: "Stellantis retains strong pricing power in North America",time: "3h",location: "Asia"),
            _newsPage(image: AppImage.logo,title: "Stellantis retains strong pricing power in North America",time: "3h",location: "Asia"),
            _newsPage(image: AppImage.chelsea,title: "Stellantis retains strong pricing power in North America",time: "3h",location: "Asia"),
            _newsPage(image: AppImage.bbcLogo1,title: "Stellantis retains strong pricing power in North America",time: "3h",location: "Asia"),
            _newsPage(image: AppImage.arsenal,title: "Stellantis retains strong pricing power in North America",time: "3h",location: "Asia"),
            _newsPage(image: AppImage.bbcLogo1,title: "Stellantis retains strong pricing power in North America",time: "3h",location: "Asia"),
            _newsPage(image: AppImage.chelsea,title: "Stellantis retains strong pricing power in North America",time: "3h",location: "Asia"),
            _newsPage(image: AppImage.bbcLogo1,title: "Stellantis retains strong pricing power in North America",time: "3h",location: "Asia"),
            _newsPage(image: AppImage.arsenal,title: "Stellantis retains strong pricing power in North America",time: "3h",location: "Asia"),
            _newsPage(image: AppImage.ali,title: "Stellantis retains strong pricing power in North America",time: "3h",location: "Asia"),
            _newsPage(image: AppImage.bbcLogo1,title: "Stellantis retains strong pricing power in North America",time: "3h",location: "Asia"),
            _newsPage(image: AppImage.logo,title: "Stellantis retains strong pricing power in North America",time: "3h",location: "Asia"),
            _newsPage(image: AppImage.bbcLogo1,title: "Stellantis retains strong pricing power in North America",time: "3h",location: "Asia"),
            _newsPage(image: AppImage.arsenal,title: "Stellantis retains strong pricing power in North America",time: "3h",location: "Asia"),
            _newsPage(image: AppImage.bbcLogo1,title: "Stellantis retains strong pricing power in North America",time: "3h",location: "Asia"),
            _newsPage(image: AppImage.mud,title: "Stellantis retains strong pricing power in North America",time: "3h",location: "Asia"),
          ],
        ),
      )
    );
  }

  Widget _newsPage({image,title,time,location}){
    return Container(
      margin: const EdgeInsets.only(top: 5),
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
                image: AssetImage(image),
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
                        title,style: const TextStyle(color: Colors.black,fontSize: 14,fontWeight: FontWeight.bold)),
                    //#time & location
                    Row(
                      children: [
                        //# time
                        Text(time,style: const TextStyle(color: Colors.black54,fontSize: 16,fontWeight: FontWeight.normal),),
                        const SizedBox(width: 4,),
                        const Text("|"),
                        const SizedBox(width: 4,),
                        //#location
                        Text(location,style: const TextStyle(color: Colors.red,fontSize: 16,fontWeight: FontWeight.normal),),

                      ],
                    )
                  ],
                ),

            ),
          )
        ],
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
