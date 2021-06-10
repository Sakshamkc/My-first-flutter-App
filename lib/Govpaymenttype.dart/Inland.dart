import 'package:flutter/material.dart';
import 'package:flutter_icons/flutter_icons.dart';
import 'package:wc_form_validators/wc_form_validators.dart';


class Inland extends StatefulWidget {
  @override
  _InlandState createState() => _InlandState();
}

class _InlandState extends State<Inland> {
  TextEditingController ebp = TextEditingController();
  TextEditingController amount = TextEditingController();
  final _formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(title: Text("Inland Department"),
        actions: [Padding(
          padding: const EdgeInsets.all(15.0),
          child: Icon(Icons.info),
        )],),
         backgroundColor: Colors.grey.shade300,
         body: SingleChildScrollView(
        child: Form(
          key: _formKey,
          child: Column(
            children: [
              Stack(
                overflow: Overflow.visible,
                children: [
                  Container(
                    height: 70,
                    width: MediaQuery.of(context).size.width,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.only(bottomLeft: Radius.circular(40),bottomRight: Radius.circular(40)),
                      color: Colors.green,
                      ),
                    ),
                     Positioned(
                  top: 30,
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
                      height: 50,
                    ),

                   Column(
                     crossAxisAlignment: CrossAxisAlignment.start,
                     children: [
                        Padding(
                          padding: const EdgeInsets.all(15.0),
                          child: Text("EBP No. ",style: TextStyle(
                      fontSize: 14,
                    fontWeight: FontWeight.bold
                    
                      ),
                      ),
                        ),
                 Padding(
                   padding: const EdgeInsets.all(15.0),
                   child: TextFormField(
                     
                        decoration: InputDecoration(
                            border: OutlineInputBorder(),
                            contentPadding: EdgeInsets.all(5),
                          ),
                        
                       validator: Validators.compose([
                         Validators.required('Required'),
                        ]),
                      ),
                 ),
                     ],
                   ),
                  Column(
                     crossAxisAlignment: CrossAxisAlignment.start,
                     children: [
                        Padding(
                          padding: const EdgeInsets.all(15.0),
                          child: Text("Amount",style: TextStyle(
                      fontSize: 14,
                    fontWeight: FontWeight.bold
                    
                      ),
                      ),
                        ),
                 Padding(
                   padding: const EdgeInsets.all(15.0),
                   child: TextFormField(
                     
                        decoration: InputDecoration(
                            border: OutlineInputBorder(),
                            contentPadding: EdgeInsets.all(5),
                          ),
                        
                       validator: Validators.compose([
                         Validators.required('Required'),
                        ]),
                      ),
                 ),
                     ],
                   ),
                   Row(
                     mainAxisAlignment: MainAxisAlignment.start,
                     children: [
                       Padding(
                         padding: const EdgeInsets.all(15.0),
                         child: MaterialButton(
                           height: 50,
                           shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
                           elevation: 12,
                           color: Colors.grey.shade300,
                           onPressed: (
                         ) {
                         },
                         
                         child: Text("Have a Promo Code?",style: TextStyle(color: Colors.green,fontSize: 16,decoration: TextDecoration.underline),
                         ),
                         ),
                       ),
                     ],
                   ),
                    Row(
                      children: [
                        
                        Expanded(
                            child: Padding(
                              padding: const EdgeInsets.all(15.0),
                              child: MaterialButton(
                                shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
                              elevation: 10,
                          color: Colors.green,
                          onPressed: () {
                               if (_formKey.currentState.validate()) {
                                print(ebp.text);
                                print(amount.text);
                               }
                          },
                          
                  child: Padding(
                    padding: const EdgeInsets.all(15.0),
                    child: Text("PROCEED",style: TextStyle(
                              color: Colors.white,
                              fontSize: 14,
                    ),),
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