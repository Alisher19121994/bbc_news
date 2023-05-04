import 'package:flutter/material.dart';

class Header extends StatefulWidget {
  const Header({Key? key}) : super(key: key);
  static const String id = "header_id";
  @override
  State<Header> createState() => _HeaderState();
}

class _HeaderState extends State<Header> {
  @override
  Widget build(BuildContext context) {
    return DrawerHeader(
      child: Container(
          color: Colors.red,
          width: MediaQuery.of(context).size.width,
          height: 167,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [

            ],
          ),
        ),
    );
  }
}
