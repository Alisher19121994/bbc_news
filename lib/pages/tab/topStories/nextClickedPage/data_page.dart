import 'package:flutter/material.dart';

class NewsReadablePage extends StatefulWidget {
  const NewsReadablePage({Key? key}) : super(key: key);
  static const String id = "dataReadablePage";
  @override
  State<NewsReadablePage> createState() => _NewsReadablePageState();
}

class _NewsReadablePageState extends State<NewsReadablePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [],
      ),
    );
  }
}
