import 'package:flutter/material.dart';

class Setting extends StatefulWidget {
  @override
  _SettingState createState() => _SettingState();
}

class _SettingState extends State<Setting> {
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
        body: Center(child: Text("Setting")),
    );
  }
}