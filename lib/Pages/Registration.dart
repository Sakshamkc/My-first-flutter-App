
import 'package:flutter/material.dart';
import 'package:wc_form_validators/wc_form_validators.dart';


class Registration extends StatefulWidget {
  @override
  _RegistrationState createState() => _RegistrationState();
}

class _RegistrationState extends State<Registration> {
TextEditingController fullname = TextEditingController();
  TextEditingController lastname = TextEditingController();
  TextEditingController address = TextEditingController();
  TextEditingController genderss = TextEditingController();

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
                        labelText: 'First Name',
                        border: OutlineInputBorder(),
                        contentPadding: EdgeInsets.all(5),
                      ),
                    
                   validator: Validators.compose([
                     Validators.required('First Name is required'),
                     
                   ]),
                  ),
                    
                    SizedBox(
                      height: 20,
                    ),
                    
                    TextFormField(
                    decoration: InputDecoration(
                        labelText: 'Last Name',
                        border: OutlineInputBorder(),
                        contentPadding: EdgeInsets.all(5),
                      ),
                    
                   validator: Validators.compose([
                     Validators.required('Last Name is required'),
                     
                   ]),
                  ),
                    SizedBox(
                      height: 20,
                    ),
                   TextFormField(
                    decoration: InputDecoration(
                        labelText: 'Address',
                        border: OutlineInputBorder(),
                        contentPadding: EdgeInsets.all(5),
                      ),
                    
                   validator: Validators.compose([
                     Validators.required('Address is required'),
                     
                   ]),
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
                          onPressed: () {
                           if (_formKey.currentState.validate()) {
                              print(fullname.text);
                              print(lastname.text);
                              print(address.text);
                            print(Navigator.pushNamed(context, "/Registered"));
                           }
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
}