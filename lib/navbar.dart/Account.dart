import 'package:flutter/material.dart';
import 'package:flutter_icons/flutter_icons.dart';


class Account extends StatefulWidget {
  @override
  _AccountState createState() => _AccountState();
}

class _AccountState extends State<Account> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
       appBar: AppBar(
          leading: Builder(builder: (context) => IconButton(icon: Icon(Icons.help), onPressed: () {
          Scaffold.of(context).openDrawer();
        }),),
         title: Center(child: Text("Help")),
       ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(15.0),
          child: Card(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                ListTile(
                  onTap: () {},
                  leading: Icon(FontAwesome.registered,color: Colors.green,),
                  title: Text("Registration",style: TextStyle(fontWeight: FontWeight.bold),),
                  subtitle: Text("Create a new account"),
                ),
                
                ListTile(
                  onTap: () {},
                  leading: Icon(Icons.file_copy,color: Colors.green,),
                  title: Text("KYC",style: TextStyle(fontWeight: FontWeight.bold),),
                  subtitle: Text("Know your customer info"),
                ),
                ListTile(
                  onTap: () {},
                  leading: Icon(FontAwesome.file,color: Colors.green,),
                  title: Text("Privacy Policy",style: TextStyle(fontWeight: FontWeight.bold),),
                  subtitle: Text("Know about privacy policy"),
                ),
                
                ListTile(
                  onTap: () {},
                  leading: Icon(Icons.login,color: Colors.green,),
                  title: Text("Login FAQs",style: TextStyle(fontWeight: FontWeight.bold),),
                  subtitle: Text("FAQs regarding login"),
                ),
                
                ListTile(
                  onTap: () {},
                  leading: Icon(Icons.payment,color: Colors.green,),
                  title: Text("Payment info",style: TextStyle(fontWeight: FontWeight.bold),),
                  subtitle: Text("Information regarding payments"),
                ),
                
                ListTile(
                  onTap: () {},
                  leading: Icon(Icons.security,color: Colors.green,),
                  title: Text("Security Tips",style: TextStyle(fontWeight: FontWeight.bold),),
                  subtitle: Text("Tips to keep your account secure"),
                ),
                
                ListTile(
                  onTap: () {},
                  leading: Icon(Icons.contact_phone,color: Colors.green,),
                  title: Text("Contact us",style: TextStyle(fontWeight: FontWeight.bold),),
                  subtitle: Text("Have any queries? Contact us"),
                ),
                
                Padding(
                  padding: const EdgeInsets.fromLTRB(10, 15, 20, 10),
                  child: Center(
                    child: Row(
                      children: [
                        Center(child: Text("Follow us at",style: TextStyle(fontWeight: FontWeight.bold),),),
                        SizedBox(
                          width: 25,
                        ),
                        Center(child: Icon(FontAwesome.facebook)),
                        SizedBox(
                          width: 25,
                        ),
                        Center(child: Icon(FontAwesome.twitter)),
                        SizedBox(
                          width: 25,
                        ),
                        Center(child: Icon(FontAwesome.youtube)),
                        SizedBox(
                          width: 25,
                        ),
                        Center(child: Icon(FontAwesome.instagram),
                        ),
                        
                      ],
                    ),
                  ),
                ),
                
              ],
              
            ),
          ),
        ),
      
      ),
    );
  }
}