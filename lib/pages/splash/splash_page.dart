import 'package:bbc_news/pages/main_page.dart';
import 'package:flutter/material.dart';

class SplashPage extends StatefulWidget {
  const SplashPage({Key? key}) : super(key: key);
  static const String id = "splashPage";

  @override
  State<SplashPage> createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage> {

  @override
  Widget build(BuildContext context) {

    Future.delayed(const Duration(seconds: 2)).then((value) =>
        Navigator.pushAndRemoveUntil(context,
            MaterialPageRoute(builder: (_) => const MainPage()), (route) => false));

    return const Scaffold(
      backgroundColor: Color(0xffa01213),
      body: Center(
        child:Text("BBC News",style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 40,))
      ),
    );
  }
}
