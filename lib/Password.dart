import 'package:flutter/material.dart';
import 'package:wc_form_validators/wc_form_validators.dart';

class Password extends StatefulWidget {
  @override
  _PasswordState createState() => _PasswordState();
}

class _PasswordState extends State<Password> {
  TextEditingController email = TextEditingController();
  final _formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return SafeArea(
          child: Scaffold(
        appBar: AppBar(
           title:Text("Forgot Password?",style: TextStyle(fontSize: 24,color: Colors.black),),
        ),

        body: SingleChildScrollView(
        
                        child: Padding(
                          padding: const EdgeInsets.fromLTRB(25,100,25,25),
                          child: Container(
                            height: 200,
                child: Form(
                  key: _formKey,
                                  child: Column(
                    children: [
                     
                      
                      Text("A 6-digit Verification code will be sent in your Email",style: TextStyle(fontWeight: FontWeight.bold),),
                      SizedBox(
                        height: 25,
                      ),
                       TextFormField(
                      decoration: InputDecoration(
                          labelText: 'Email',
                         
                          border: OutlineInputBorder(),
                          contentPadding: EdgeInsets.all(5),
                        ),
                      
                     validator: Validators.compose([
                       Validators.required('Email is required'),
                       Validators.email('Invalid Email Address'),
                     ]),
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
                                       print( Navigator.popAndPushNamed(context, "/OtpPassword"));
                                         }
                                      },
                              child: Padding(
                                padding: const EdgeInsets.all(10.0),
                                child: Text("Proceed",style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 14,
                                ),),
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
      ),
    );
  }
}