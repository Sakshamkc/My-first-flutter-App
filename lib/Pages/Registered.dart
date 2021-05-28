import 'package:firstproject/Pages/Homepage.dart';
import 'package:flutter/material.dart';

class Registered extends StatefulWidget {
  @override
  _RegisteredState createState() => _RegisteredState();
}

class _RegisteredState extends State<Registered> {
  @override
  void initState(){
    super.initState();
    Future.delayed(Duration(seconds: 5),() {
      Navigator.popAndPushNamed(context, "/HomePage");
    });
  }
  Widget build(BuildContext context) {
    return Scaffold(
      body:  Center(child: Text("Registered Succesfully",textScaleFactor: 2,)),
    );
  }
}