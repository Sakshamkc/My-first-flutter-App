
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firstproject/Pages/Registration.dart';
import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
TextEditingController emails = TextEditingController();
  TextEditingController passwords = TextEditingController();
  final FirebaseAuth _auth =FirebaseAuth.instance;
  final Firestore _db = Firestore.instance;
  final _formKey = GlobalKey<FormState>();

  
  bool rememberme = false;
  bool showPassword = false;
  @override
  Widget build(BuildContext context) {
    return SafeArea(
          child: Scaffold(
            backgroundColor: Colors.grey.shade300,
        appBar: AppBar(
         title: Text("Hamro App",style: TextStyle(fontSize: 24,color: Colors.white),
         ),
        ),
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(20.0),
            child: Form(
                      key: _formKey,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                children : [
                  Text("Welcome ,",style: TextStyle(fontSize: 24),),
                  Text("Sign in to continue",style: TextStyle(fontSize: 24),),

              SizedBox(
                height: 20,
              ),

                  TextFormField(
                    decoration: InputDecoration(
                        labelText: 'Email',
                       
                        prefixIcon: Icon(Icons.email),
                        border: OutlineInputBorder(),
                        contentPadding: EdgeInsets.all(5),
                      ),
                    controller: emails,
                   
                  ),
                   SizedBox(
                    height: 20,
                  ),
                  TextFormField(
                  controller: passwords,
                    decoration: InputDecoration(
                      labelText: 'Password',
                      suffixIcon: IconButton(
                        
                        onPressed: (
                        ) {
                          if (showPassword == false) {
                            setState(() {
                              showPassword = true;
                            });
                        }
                        else{
                          setState(() {
                               showPassword = false;
                          });
                        }
                        }, icon: Icon(Icons.remove_red_eye),) ,
                      border: OutlineInputBorder(),
                      contentPadding: EdgeInsets.all(5),
                    ),
                    obscureText: false,
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Row(
                    children: [
                      Checkbox(
                          activeColor: Colors.green,
                          value: rememberme, onChanged:(bool value) {
                          setState(() {
                            rememberme = value;
                          });
                        }),
                        Text("Remember Me ?",style: TextStyle(fontSize: 14),),
                      ],
                  ),
                  Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    InkWell(
                          onTap: () {
                            Navigator.pushNamed(context, "/Password");
                          },
                           child: RichText(text: TextSpan(
                                text: "Forgot Password? ",style: TextStyle(color: Colors.green,decoration: TextDecoration.underline,fontSize: 14 ),
                          ),
                           
                          ),
                      
                    ),
                  ],

                ),
                SizedBox(
                  height: 20,
                ),
                    Row(
                      children: [
                        
                        Expanded(
                            child: MaterialButton(
                            elevation: 10,
                          color: Colors.green,
                          onPressed: () {
                            _loginPage();
                          },
                        
                  child: Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: Text("LOGIN",style: TextStyle(
                            color: Colors.white,
                            fontSize: 14,
                    ),),
                  ),

                  ),
                        ),
                      ],
                    ),
                    
                SizedBox(
                  height: 20,
                ),
                    Row(
                      children: [
                        
                        Expanded(
                            child: MaterialButton(
                            elevation: 10,
                          color: Colors.green,
                          onPressed: () {
                            Navigator.pushNamed(context, "/Phone");
                          },
                        
                  child: Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: Text("Sign-in using Phone",style: TextStyle(
                            color: Colors.white,
                            fontSize: 14,
                    ),),
                  ),

                  ),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 20,
                    ),
                   Row(
                       mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        
                        InkWell(
                          onTap: () {
                            Navigator.pushNamed(context, "/Registration_page");
                          },
                           child: RichText(text: TextSpan(
                                text: "Register for free? ",style: TextStyle(color: Colors.green,decoration: TextDecoration.underline ),
                          ),
                           
                          ),
                      
                    ),
                    ],
                     ),
                ],
              ),
            ),
          ),
        ),

      ),
    );
  }
  void _loginPage() async{
    String email = emails.text.trim();
    String password = passwords.text;
    if(email.isNotEmpty && password.isNotEmpty) {
      _auth.signInWithEmailAndPassword(email: emails.text, password: passwords.text).then((user) 
      {
        showDialog(context: context, builder: (ctx) {
        return AlertDialog(
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
          title: Text("Done"),
          content: Text("Sign in Success"),
          actions: [
            FlatButton(child: Text("Cancel"),
              onPressed: () 
            {
              Navigator.of(ctx).pop();
            }, ),
          ],
        );
        });
      })
      
      .catchError((e){
        showDialog(context: context,
         builder: (ctx) {
        return AlertDialog(
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
          title: Text("Error"),
          content: Text("Please provide better email"),
          actions: [
            FlatButton(onPressed: () {
              Navigator.of(ctx).pop();
            }, child: Text("Cancel")),
          ],
        );
      });
      });
    }
    else{
      showDialog(context: context, builder: (ctx) {
        return AlertDialog(
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
          title: Text("Error"),
          content: Text("Please provide email and password"),
          actions: [
            FlatButton(onPressed: () {
              Navigator.of(ctx).pop();
            }, child: Text("Cancel")),
            FlatButton(onPressed: () {
              emails.text = "";
              passwords.text = "";
              Navigator.of(ctx).pop();
            }, child: Text("Ok")),
          ],
        );
      });
    }
  }
}
