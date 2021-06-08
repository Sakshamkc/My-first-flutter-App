import 'package:flutter/material.dart';
import 'package:flutter_icons/flutter_icons.dart';
import 'package:wc_form_validators/wc_form_validators.dart';

class Topup extends StatefulWidget {
  @override
  _TopupState createState() => _TopupState();
}

class _TopupState extends State<Topup> {
  TextEditingController email = TextEditingController();
  TextEditingController password = TextEditingController();
  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
         body: SingleChildScrollView(
        child: Form(
          key: _formKey,
          child: Column(
            children: [
              Stack(
                overflow: Overflow.visible,
                children: [
                  Container(
                    height: 90,
                    width: MediaQuery.of(context).size.width,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.only(bottomLeft: Radius.circular(40),bottomRight: Radius.circular(40)),
                      color: Colors.green,
                      ),
                    ),
                     Positioned(
                  top: 50,
                  left: 25,
                  child: Container(
                    height: 75,
                    width: MediaQuery.of(context).size.width-50,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.all(
                        Radius.circular(10),
                      ),
                      color: Colors.white,
                      boxShadow: [
                        BoxShadow(
                          color: Colors.grey.shade300,
                          offset: Offset(0,10),
                          blurRadius: 10,
                        ),
                      ],
                    ),
                   child: Column(
                     children: [
                      ListTile(
                        leading: Icon(Icons.account_balance),
                        title: Text("NPR \112.13"),
                        subtitle: Text("Balance"),
                        trailing: Icon(FontAwesome.refresh),
                      ),
                     ],
                   ),
                   
                  ),
                    ),
                    
                ],
          ),
          SizedBox(
                      height: 60,
                    ),

                   Column(
                     crossAxisAlignment: CrossAxisAlignment.start,
                     children: [
                        Text("Mobile (10 digits)/Landline(8 digits) ",style: TextStyle(
                      fontSize: 14,
                    fontWeight: FontWeight.bold
                    
                      ),
                      ),
                      SizedBox(
                        height: 20,
                      ),
                 TextFormField(
                      decoration: InputDecoration(
                          suffixIcon: Icon(FontAwesome.phone),
                          border: OutlineInputBorder(),
                          contentPadding: EdgeInsets.all(5),
                        ),
                      
                     validator: Validators.compose([
                       Validators.required('Mobile Number is required'),
                      ]),
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