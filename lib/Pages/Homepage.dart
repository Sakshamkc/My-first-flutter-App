import 'package:firstproject/Pages/Loginpage.dart';
import 'package:firstproject/navbar.dart/Account.dart';
import 'package:firstproject/navbar.dart/Cart.dart';
import 'package:firstproject/navbar.dart/Home.dart';
import 'package:firstproject/navbar.dart/Setting.dart';
import 'package:flutter/material.dart';

class Homepage extends StatefulWidget {
  @override
  _HomepageState createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  int selectedIndex =0;
  void selectMenu(int a){
    setState(() {
      selectedIndex = a;
    });
  }
  @override
  Widget build(BuildContext context) {
    return SafeArea(
          child: Scaffold(
            extendBodyBehindAppBar: true,
        
        drawer: Drawer(),
        bottomNavigationBar:BottomNavigationBar(
          onTap: 
            (int value) {
              selectMenu(value);
            },
          currentIndex: selectedIndex,
          selectedItemColor: Colors.red,
          unselectedItemColor: Colors.black54,
          showUnselectedLabels: false,
          items: [
          BottomNavigationBarItem(icon: Icon(Icons.home),title: Text('Home')),
          BottomNavigationBarItem(icon: Icon(Icons.settings),title: Text('Settings')),
          BottomNavigationBarItem(icon: Icon(Icons.shopping_cart),title: Text('Products')),
          BottomNavigationBarItem(icon: Icon(Icons.help), title: Text('Help')),
        ],
        ),
        
         body: selectedIndex == 0 ? Home()
        : selectedIndex ==1 ? Setting() :selectedIndex ==2 ? Cart() : selectedIndex ==3 ? Account() : Center(child: Text("Error")),
      ),
    );
  }
}