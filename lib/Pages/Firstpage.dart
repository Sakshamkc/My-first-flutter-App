import 'package:flutter/material.dart';

class FirstPage extends StatefulWidget {
  @override
  _FirstPageState createState() => _FirstPageState();
}

class _FirstPageState extends State<FirstPage> {
  @override
  void initState(){
    super.initState();
    Future.delayed(Duration(seconds: 3),() {
      Navigator.popAndPushNamed(context, "/HomePage");
    });
  }
  Widget build(BuildContext context) {
    return Scaffold(
      body:  Image.asset('images/splash.png',fit: BoxFit.cover,height: MediaQuery.of(context).size.height,width: MediaQuery.of(context).size.width,),
    );
  }
}