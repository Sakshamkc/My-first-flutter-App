import 'package:firstproject/Pages/Homepage.dart';
import 'package:firstproject/Pages/Loginpage.dart';
import 'package:firstproject/Pages/OTP.dart';
import 'package:firstproject/Pages/PasswordChange.dart';
import 'package:firstproject/Pages/Registered.dart';
import 'package:firstproject/Pages/Registration.dart';
import 'package:firstproject/Pages/Success.dart';
import 'package:firstproject/Password.dart';
import 'package:firstproject/navbar.dart/Account.dart';
import 'package:firstproject/navbar.dart/Cart.dart';
import 'package:firstproject/navbar.dart/Home.dart';
import 'package:firstproject/navbar.dart/Setting.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(primarySwatch: Colors.green),
      initialRoute: "/",
      routes: {
        "/" : (_) => Homepage(),
        "/Registration_page" : (_) => Registration(),
        "/Password" : (_) => Password(),
        "/Registered" : (_) => Registered(),
        "/HomePage" : (_) => Homepage(),
        "/OtpPassword" : (_) => OtpPassword(),
        "/Success" : (_) => Success(),
        "/Setting" : (_) => Setting(),
        "Account" : (_) => Account(),
        "Cart" : (_) => Cart(),
        "/PasswordChange" : (_) => PasswordChange(),
      },
     
    );
  }
}

