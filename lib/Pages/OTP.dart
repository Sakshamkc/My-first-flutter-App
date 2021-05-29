import 'package:flutter/material.dart';
import 'package:wc_form_validators/wc_form_validators.dart';

class OtpPassword extends StatefulWidget {
  @override
  _OtpPasswordState createState() => _OtpPasswordState();
}

class _OtpPasswordState extends State<OtpPassword> {
  TextEditingController otp = TextEditingController();
  final _formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.fromLTRB(25,100,25,25),
          child: Form(
            key: _formKey,
                      child: Column(
              children: [
                Text("An OTP code has been sent in your email Id",style: TextStyle(fontWeight: FontWeight.bold),),
                 SizedBox(
                          height: 25,
                        ),
                        TextFormField(
                    decoration: InputDecoration(
                        labelText: 'OTP code',
                       
                        border: OutlineInputBorder(),
                        contentPadding: EdgeInsets.all(5),
                      ),
                    
                   validator: Validators.compose([
                     Validators.required('OTP is required'),
                     Validators.minLength(6, 'Code should be exactly 6 numbers'),
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
                                            print(otp.text);
                                           print(Navigator.popAndPushNamed(context, "/PasswordChange"),);
                                           }
                                        },
                                child: Padding(
                                  padding: const EdgeInsets.all(10.0),
                                  child: Text("Submit",style: TextStyle(
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
    );
  }
}