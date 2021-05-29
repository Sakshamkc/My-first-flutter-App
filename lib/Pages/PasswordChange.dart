import 'package:flutter/material.dart';
import 'package:wc_form_validators/wc_form_validators.dart';

class PasswordChange extends StatefulWidget {
  @override
  _PasswordChangeState createState() => _PasswordChangeState();
}

class _PasswordChangeState extends State<PasswordChange> {
  TextEditingController password = TextEditingController();
  TextEditingController confirmpassword = TextEditingController();
  final _formKey = GlobalKey<FormState>();
  bool showPassword = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Form(
          key: _formKey,
                  child: Padding(
                    padding: const EdgeInsets.fromLTRB(25,100,25,25),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text("Please Enter your password",style: TextStyle(fontWeight: FontWeight.bold),),
              SizedBox(
                height: 25,
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
                     validator: Validators.compose([
                        Validators.required('Password is required'),
                      ],),
                      obscureText: showPassword,
              ),
              SizedBox(
                height: 25,
              ),
              TextFormField(
                    
                      decoration: InputDecoration(
                        labelText: ' Confirm Password',
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
                      validator: Validators.compose([
                        Validators.required('Password is required'),
                      ],),
                      obscureText: showPassword,
              ),
              SizedBox(
                height: 25,
              ),
              Row(
                        children: [
                          Expanded(
                              child: MaterialButton(
                              elevation: 10,
                            color: Colors.green,
                            onPressed: () {
                             if (_formKey.currentState.validate()) {
                                print(password.text);
                                print(confirmpassword.text);
                                
                              print(Navigator.pushNamed(context, "/Success"));
                             }
                              },
                            
                    child: Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: Text("Confirm",style: TextStyle(
                              color: Colors.white,
                              fontSize: 14,
                      ),
                      ),
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
    );
  }
}