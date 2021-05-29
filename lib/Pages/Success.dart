import 'package:flutter/material.dart';

class Success extends StatefulWidget {
  @override
  _SuccessState createState() => _SuccessState();
}

class _SuccessState extends State<Success> {
  @override
  void initState(){
    super.initState();
    Future.delayed(Duration(seconds: 5),() {
      Navigator.popAndPushNamed(context, "/");
    });
  }
  Widget build(BuildContext context) {
    return Scaffold(
      body:  Center(child: Text("Changed Succesfully",textScaleFactor: 2,)),
    );
  }
}