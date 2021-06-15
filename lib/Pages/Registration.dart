
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:wc_form_validators/wc_form_validators.dart';



class Registration extends StatefulWidget {
  @override
  _RegistrationState createState() => _RegistrationState();
}

class _RegistrationState extends State<Registration> {
TextEditingController _emailcontroller = TextEditingController();
  TextEditingController _passwordcontroller = TextEditingController();
  bool showPassword = false;
final FirebaseAuth _auth = FirebaseAuth.instance;
  final _formKey = GlobalKey<FormState>();
   List <String> genders = ['Male','Female',];
  String gender;
  bool name =false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Registration Form")
      ),
      body: SingleChildScrollView(
        
        child: Padding(
          
          padding: const EdgeInsets.all(20.0),
          child: Form(
            key: _formKey,
                    child: Column(
                      
              children: [
                 TextFormField(
                    decoration: InputDecoration(
                        labelText: 'Email',
                        border: OutlineInputBorder(),
                        contentPadding: EdgeInsets.all(5),
                      ),
                    controller: _emailcontroller,
                   validator: Validators.compose([
                     Validators.required('Email is required'),
                     
                   ]),
                  ),
                    
                    SizedBox(
                      height: 20,
                    ),
                    
                    TextFormField(
                  controller: _passwordcontroller,
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
                    obscureText: showPassword,
                  ),
                    SizedBox(
                      height: 20,
                    ),
                     DropdownButton <String>(
                      isExpanded: true,
                      value: gender,
                      hint: Text("Select Gender"),
                      items: genders.map((String value) {
                        return DropdownMenuItem <String>(
                          value: value,
                          child: Text(value),
                          );
                          
                      }).toList(),
                      
                    onChanged: (
                      String value
                    ) {
                      setState(() {
                        gender = value;
                      });
                    }),
                    Row(
                    children: [
                      Checkbox(
                          activeColor: Colors.green,
                          value: name, onChanged:(bool value) {
                          setState(() {
                            name = value;
                          });
                          
                        }),
                        Text("I accept terms and condition"),
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
                          onPressed: (){
                           _signup();
                            },
                          
                  child: Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: Text("Proceed",style: TextStyle(
                            color: Colors.white,
                            fontSize: 14,
                    ),
                    ),
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
                         Navigator.popAndPushNamed(context, "/LoginPage");
                         },
                      
                     child: RichText(text: TextSpan(
                                text: "Go back ?",style: TextStyle(color: Colors.green,decoration: TextDecoration.underline ),
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
  void _signup() async{
    final String emailTXT = _emailcontroller.text.trim();
    final String passwordTXT = _passwordcontroller.text;

    if(emailTXT.isNotEmpty && passwordTXT.isNotEmpty) {
      _auth.createUserWithEmailAndPassword(
        email: emailTXT, 
        password: passwordTXT
        ).then((user) {
           showDialog(context: context, builder: (ctx) {
        return AlertDialog(
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
          title: Text("Success"),
          content: Text("Sign UP Process done, now you can sign in"),
          actions: [
            FlatButton(child: Text("Ok"),
              onPressed: () 
            {
              Navigator.of(context).pop();
            }, ),
          ],
        );
        });
        })
        .catchError((e){
           showDialog(context: context, builder: (ctx) {
        return AlertDialog(
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
          title: Text("Error"),
          content: Text("${e.message}"),
          actions: [
            FlatButton(child: Text("Ok"),
              onPressed: () 
            {
              Navigator.of(ctx).pop();
            }, ),
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
          content: Text("Please provide email and Password"),
          actions: [
            FlatButton(child: Text("Ok"),
              onPressed: () 
            {
              Navigator.of(ctx).pop();
            }, ),
          ],
        );
        });
    }
  }
}
