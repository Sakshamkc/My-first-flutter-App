
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
      Navigator.popAndPushNamed(context, "/");
    });
  }
  Widget build(BuildContext context) {
    return Scaffold(
      body:  Center(child: Text("Registered Succesfully,Sign in to Continue",textScaleFactor: 2,)),
    );
  }
}