import 'package:flutter/material.dart';
import 'package:flutter_icons/flutter_icons.dart';

class Setting extends StatefulWidget {
  @override
  _SettingState createState() => _SettingState();
}

class _SettingState extends State<Setting> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Settings"),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(15.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text("General",style: TextStyle(fontWeight: FontWeight.bold),),
              SizedBox(
                height: 10,
              ),
              ListTile(
                onTap: () {},
                leading: Icon(FontAwesome.paint_brush,color: Colors.green,),
                title: Text("Appearance",style: TextStyle(fontWeight: FontWeight.bold),),
                subtitle: Text("Choose your light or dark theme preference"),
              ),
              SizedBox(
                height: 10,
              ),
              ListTile(
                onTap: () {},
                leading: Icon(Icons.notifications,color: Colors.green,),
                title: Text("App notifications",style: TextStyle(fontWeight: FontWeight.bold),),
                subtitle: Text("Turn off all the notifications"),
              ),
              Divider(
                
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text("Security",style: TextStyle(fontWeight: FontWeight.bold),),
              ),
              SizedBox(
                height: 10,
              ),
              ListTile(
                onTap: () {},
                leading: Icon(FontAwesome.mobile_phone,color: Colors.green,),
                title: Text("Change MPIN",style: TextStyle(fontWeight: FontWeight.bold),),
                subtitle: Text("Change your Mobile Personal Identification Number"),
              ),
              SizedBox(
                height: 10,
              ),
              ListTile(
                onTap: () {},
                leading: Icon(Icons.fingerprint,color: Colors.green,),
                title: Text("Use Fingerprint",style: TextStyle(fontWeight: FontWeight.bold),),
                subtitle: Text("Set Fingerprint for login or payment or both"),
              ),
              Divider(
                
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text("App",style: TextStyle(fontWeight: FontWeight.bold),),
              ),
              SizedBox(
                height: 10,
              ),
              ListTile(
                onTap: () {},
                leading: Icon(Icons.update,color: Colors.green,),
                title: Text("Check for update",style: TextStyle(fontWeight: FontWeight.bold),),
                subtitle: Text("Version 3.8.8.3(391)"),
              ),
              SizedBox(
                height: 10,
              ),
              ListTile(
                onTap: () {},
                leading: Icon(Icons.info,color: Colors.green,),
                title: Text("About Us",style: TextStyle(fontWeight: FontWeight.bold),),
                subtitle: Text("Know about Hamro App"),
              ),
            ],
            
          ),
        ),
      ),
    );
  }
}