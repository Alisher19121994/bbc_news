import 'package:bbc_news/pages/drawer/body.dart';
import 'package:bbc_news/pages/drawer/header.dart';
import 'package:flutter/material.dart';

class DrawerPage extends StatefulWidget {
  const DrawerPage({Key? key}) : super(key: key);
  static const String id = "drawerPage";
  @override
  State<DrawerPage> createState() => _DrawerPageState();
}

class _DrawerPageState extends State<DrawerPage> {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: const [
          Header(),
          Body()
        ],
      ),
    );
  }
}
