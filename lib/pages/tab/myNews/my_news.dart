import 'package:flutter/material.dart';

class MyNews extends StatefulWidget {
  const MyNews({Key? key}) : super(key: key);
  static final String id = "myNews";
  @override
  State<MyNews> createState() => _MyNewsState();
}

class _MyNewsState extends State<MyNews> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffcbcbcb),
      body: Center(
        child: Text("My news",style: TextStyle(color: Colors.black),),
      ),
    );
  }
}
