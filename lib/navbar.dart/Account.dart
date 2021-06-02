import 'package:flutter/material.dart';

class Account extends StatefulWidget {
  @override
  _AccountState createState() => _AccountState();
}

class _AccountState extends State<Account> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Drawer(),
       appBar: AppBar(
          backgroundColor: Colors.green,
        actions: [Icon(Icons.notifications_active_outlined)],
        bottom: PreferredSize(child: Padding(
              padding: const EdgeInsets.all(20.0),
              child: Container(
                decoration: BoxDecoration(
                  color: Colors.white,
                ),
                child: TextField(
                  decoration: InputDecoration(
                    hintText: 'Search',
                    suffixIcon: Icon(Icons.search),
                    contentPadding: EdgeInsets.all(15),
                  ),
                ),
              ),
        ),
        preferredSize: Size.fromHeight(70),
        ),
        ),
        body: Center(child: Text("Account")),
    );
  }
}