
import 'package:flutter/material.dart';
import 'package:wc_form_validators/wc_form_validators.dart';


class LoginPage extends StatefulWidget {
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
TextEditingController email = TextEditingController();
  TextEditingController password = TextEditingController();
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
                    
                   validator: Validators.compose([
                     Validators.required('Email is required'),
                     Validators.email('Invalid email address'),
                   ]),
                  ),
                   SizedBox(
                    height: 20,
                  ),
                  TextFormField(
                  
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
                    
                     validator: Validators.compose(
                              [Validators.required('password is required')]),
                    obscureText: showPassword,
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
                             if (_formKey.currentState.validate()) {
                              print(email.text);
                              print(password.text);
                              print(Navigator.popAndPushNamed(context, "/HomePage"));
                             }
                         
                            
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
}