import 'package:flutter/material.dart';

Widget topBarNewsItem({image,title,time,location}){
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