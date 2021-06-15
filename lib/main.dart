import 'package:firebase_auth/firebase_auth.dart';
import 'package:firstproject/Govpaymenttype.dart/Inland.dart';
import 'package:firstproject/Govpaymenttype.dart/Localgov.dart';
import 'package:firstproject/Govpaymenttype.dart/Trafficpolice.dart';
import 'package:firstproject/Govpaymenttype.dart/foreign.dart';
import 'package:firstproject/Homecontainer.dart/Electricity.dart';
import 'package:firstproject/Homecontainer.dart/Govpayment.dart';
import 'package:firstproject/Homecontainer.dart/Internet.dart';
import 'package:firstproject/Homecontainer.dart/Khanepani.dart';
import 'package:firstproject/Homecontainer.dart/Movies.dart';
import 'package:firstproject/Homecontainer.dart/Topup.dart';
import 'package:firstproject/Internettype.dart/3Gvision.dart';
import 'package:firstproject/Internettype.dart/ADSL.dart';
import 'package:firstproject/Internettype.dart/Alphacable.dart';
import 'package:firstproject/Internettype.dart/Arrownet.dart';
import 'package:firstproject/Internettype.dart/BBN.dart';
import 'package:firstproject/Internettype.dart/Biratcable.dart';
import 'package:firstproject/Internettype.dart/Classictech.dart';
import 'package:firstproject/Internettype.dart/Pokharainternet.dart';
import 'package:firstproject/Internettype.dart/Skycable.dart';
import 'package:firstproject/Internettype.dart/Subisu.dart';
import 'package:firstproject/Internettype.dart/Techmind.dart';
import 'package:firstproject/Internettype.dart/Vianet.dart';
import 'package:firstproject/Internettype.dart/Websurfer.dart';
import 'package:firstproject/Internettype.dart/fiber.dart';
import 'package:firstproject/Internettype.dart/worldlink.dart';
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
import 'package:firebase_core/firebase_core.dart';

Future<void> main() async{
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      
      debugShowCheckedModeBanner: false,
      theme: ThemeData(primarySwatch: Colors.green),
      initialRoute: "/",
      routes: {
        "/" : (_) => LoginPage(),
        "/LoginPage" : (_) => LoginPage(),
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
        "/Home" : (_) => Home(),
        "/Topup" : (_) => Topup(),
        "/Electricity" : (_) => Electricity(),
        "/Khanepani" : (_) => Khanepani(),
        "/Internet" : (_) => Internet(),
        "/Worldlink" : (_) => Worldlink(),
        "/Vianet" : (_) => Vianet(),
        "/Subisu" : (_) => Subisu(),
        "/ADSL" : (_) => ADSL(),
        "/Classictech" : (_) => Classictech(),
        "/Arrownet" : (_) => Arrownet(),
        "/Techmind" : (_) => Techmind(),
        "/Fiber" : (_) => Fiber(),
        "/Websurfer" : (_) => Websurfer(),
        "/ThreeVision" : (_) => Threevision(),
        "/AlphaCable" : (_) => AlphaCable(),
        "/BBN" : (_) => BBN(),
        "/BiratCable" : (_) => BiratCable(),
        "/SkyCable" : (_) => Skycable(),
        "/PokharaInternet" : (_) => PokharaInternet(),
        "/Movies" : (_) => Movies(),
        "/Governmentpayment" : (_) => Governmentpayment(),
        "/TrafficPolice" : (_) => Trafficpolice(),
        "/Inland" : (_) => Inland(),
        "/LocalGovernment" : (_) => LocalGov(),
        "/Foreign" : (_) => Foreign(),
      },
     
    ); 
    
  }
}


