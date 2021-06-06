
import 'package:flutter/material.dart';
import 'package:flutter_icons/flutter_icons.dart';


class Account extends StatefulWidget {
  @override
  _AccountState createState() => _AccountState();
}

class _AccountState extends State<Account> {
  bool isVisible = false;
  bool isVisibleee = false;
  bool issVisiblee =false;
  bool isVisiblee = false;
  bool isTrue = false;
  bool isFalse = false;
  bool isYes = false;
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
                   Container(
                     child: ListTile(
                          onTap: () {
                            setState(() {
                              isVisible = !isVisible;
                            });
                          },
                          leading: Icon(FontAwesome.registered,color: Colors.green,),
                          title: Text("Registration",style: TextStyle(fontWeight: FontWeight.bold),),
                          subtitle: Text("Create a new account"),
                          
                        ),
                   ),
                      
                  Visibility(
                     visible: isVisible,
                     child: Center(
                       child: Text("You can go to a website"),
                     ),),
                     
                ListTile(
                  onTap: () {
                    setState(() {
                          isVisibleee = !isVisibleee;
                      });
                  },
                  leading: Icon(Icons.file_copy,color: Colors.green,),
                  title: Text("KYC",style: TextStyle(fontWeight: FontWeight.bold),),
                  subtitle: Text("Know your customer info"),
                ),
                 Visibility(
                     visible: isVisibleee,
                     child: Center(
                       child: Text("You can fill up the form from our app"),
                     ),),
                ListTile(
                  onTap: () {
                    setState(() {
                                          issVisiblee = !issVisiblee;
                                        });
                  },
                  leading: Icon(FontAwesome.file,color: Colors.green,),
                  title: Text("Privacy Policy",style: TextStyle(fontWeight: FontWeight.bold),),
                  subtitle: Text("Know about privacy policy"),
                ),
                Visibility(
                     visible: issVisiblee,
                     child: Center(
                       child: Text("Help to know about the privacy of our App"),
                     ),),
                ListTile(
                  onTap: () {
                    setState(() {
                                          isVisiblee = !isVisiblee;
                                        });
                  },
                
                  leading: Icon(Icons.login,color: Colors.green,),
                  title: Text("Login FAQs",style: TextStyle(fontWeight: FontWeight.bold),),
                  subtitle: Text("FAQs regarding login"),
                ),
                Visibility(
                     visible: isVisiblee,
                     child: Center(
                       child: Text("Helps to login regarding FAQ"),
                     ),),
                ListTile(
                  onTap: () {
                    setState(() {
                                          isTrue = !isTrue;
                                        });
                  },
                  
                  leading: Icon(Icons.payment,color: Colors.green,),
                  title: Text("Payment info",style: TextStyle(fontWeight: FontWeight.bold),),
                  subtitle: Text("Information regarding payments"),
                ),
                Visibility(
                     visible: isTrue,
                     child: Center(
                       child: Text("All the information of payment is described here"),
                     ),),
                ListTile(
                  onTap: () {
                    setState(() {
                                          isFalse = !isFalse;
                                        });
                  },
                  
                  leading: Icon(Icons.security,color: Colors.green,),
                  title: Text("Security Tips",style: TextStyle(fontWeight: FontWeight.bold),),
                  subtitle: Text("Tips to keep your account secure"),
                ),
                Visibility(
                     visible: isFalse,
                     child: Center(
                       child: Text("Youc can know all the security tips in this section"),
                     ),),
                ListTile(
                  onTap: () {
                    setState(() {
                                          isYes = !isYes;
                                        });
                  },
                  leading: Icon(Icons.contact_phone,color: Colors.green,),
                  title: Text("Contact us",style: TextStyle(fontWeight: FontWeight.bold),),
                  subtitle: Text("Have any queries? Contact us"),
                ),
                Visibility(
                     visible: isYes,
                     child: Center(
                       child: Text("The queries can be understanble if u contact here"),
                     ),),

                     SizedBox(
                       height: 10,
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