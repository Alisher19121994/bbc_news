import 'package:flutter/material.dart';

class CoronaVirus extends StatefulWidget {
  const CoronaVirus({Key? key}) : super(key: key);
  static final String id = "coronaVirus";
  @override
  State<CoronaVirus> createState() => _CoronaVirusState();
}

class _CoronaVirusState extends State<CoronaVirus> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffcbcbcb),
      body: Center(
        child: Text("Coronavirus",style: TextStyle(color: Colors.black),),
      ),
    );
  }
}
