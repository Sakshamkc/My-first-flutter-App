
import 'package:flutter/material.dart';
import 'package:flutter_icons/flutter_icons.dart';
import 'package:wc_form_validators/wc_form_validators.dart';
class Electricity extends StatefulWidget {
  @override
  _ElectricityState createState() => _ElectricityState();
}

class _ElectricityState extends State<Electricity> {
   TextEditingController scno = TextEditingController();
   TextEditingController customerid = TextEditingController();
  final _formKey = GlobalKey<FormState>();
  List <String> counters = ['ACHHAM','Baneshwor','Ratnapark','BAGLUNG','BELTAR','BHAJANI','Bhaktapur','LALITPUR','Bardibas','Butwal','Newroad','Nepalgunj','Chabhil','Bhojpur','Dailekh','Damauli','JHAPA','Dhadhing','Dhangadi'];
  String counter;
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(title: Text("Electricity"),
        actions: [Padding(
          padding: const EdgeInsets.all(10.0),
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
                  top: 25,
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
                child: Text("NEA Counter",style: TextStyle(fontSize: 16,fontWeight: FontWeight.bold),),
              ),
                 
                 Padding(
                   padding: const EdgeInsets.fromLTRB(15, 0, 15, 10),
                   child: DropdownButton <String>(
                     
                        isExpanded: true,
                        value: counter,
                        hint: Text("Select"),
                        
                        items: counters.map((String value) {
                          return DropdownMenuItem <String>(
                            value: value,
                            child: Text(value),
                            
                            );
                            
                        },
                        
                        ).toList(),
                      
                      onChanged: (
                        String value
                      ) {
                        setState(() {
                          counter = value;
                        });
                        
                      }),
                      
                 ),
                 Column(
                   crossAxisAlignment: CrossAxisAlignment.start,
                   children: [
                     Padding(
                      padding: const EdgeInsets.all(15.0),
                        child: Text("Sc.No.",style: TextStyle(fontSize: 16,fontWeight: FontWeight.bold),),
                      ),
                       Padding(
                   padding: const EdgeInsets.fromLTRB(15, 0, 15, 10),
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
                        child: Text("Customer ID",style: TextStyle(fontSize: 16,fontWeight: FontWeight.bold),),
                      ),
                       Padding(
                   padding: const EdgeInsets.fromLTRB(15, 0, 15, 10),
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
                                print(scno.text);
                                print(customerid.text);
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
          
          
            ],
          
        ),
         ),
      ),
          ),
    );
  }
}