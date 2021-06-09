
import 'package:flutter/material.dart';
import 'package:flutter_icons/flutter_icons.dart';
import 'package:wc_form_validators/wc_form_validators.dart';
import 'package:url_launcher/url_launcher.dart';

class Topup extends StatefulWidget {
  @override
  _TopupState createState() => _TopupState();
}

class _TopupState extends State<Topup> {
  TextEditingController phone = TextEditingController();
  final _formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(title: Text("Topup"),),
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
                      height: 60,
                    ),

                   Column(
                     crossAxisAlignment: CrossAxisAlignment.start,
                     children: [
                        Padding(
                          padding: const EdgeInsets.all(15.0),
                          child: Text("Mobile (10 digits)/Landline(8 digits) ",style: TextStyle(
                      fontSize: 14,
                    fontWeight: FontWeight.bold
                    
                      ),
                      ),
                        ),
                 Padding(
                   padding: const EdgeInsets.all(15.0),
                   child: TextFormField(
                     
                        decoration: InputDecoration(
                            suffixIcon: Icon(FontAwesome.phone),
                            border: OutlineInputBorder(),
                            contentPadding: EdgeInsets.all(5),
                          ),
                        
                       validator: Validators.compose([
                         Validators.required('Mobile Number is required'),
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
                                print(phone.text);
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
                    
                     Stack(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(15.0),
                    child: Container(
                      height: 140,
                      width: MediaQuery.of(context).size.width,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.all(Radius.circular(10)),
                        color: Colors.grey.shade100,
                        boxShadow: [
                          BoxShadow(
                            color: Colors.grey.shade300,
                            offset: Offset(0,10),
                            blurRadius: 10,
                          ),
                        ],
                        ),
                        
                        
                      ),
                  ),
                  Positioned(
                    top: 20,
                    left: 30,
                    child: Container(
                      child: Column(
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(10.0),
                            child: Center(child: Text("BUY DATA PACKS",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20),)),
                          )
                        ],
                      ),
                    ),
                    
                    ),
                    
                  Positioned(
                    top: 60,
                    left: 30,
                    child: Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: Container(
                      height: 60,
                      width: 60,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.all(Radius.circular(10)),
                        color: Colors.grey.shade300,
                      ),
                      child: Column(
                        
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          InkWell(
                            onTap: () {
                              launch('https://www.ncell.axiata.com/en/individual/data-and-voice?packageCategories=data-packs');
                            },
                            child: Image.asset("images/ncell.jpg",width: MediaQuery.of(context).size.width,height: 60,),
                          ),
                        ],
                      ),
                      
                  ),
                  
                    ),
                    ),
                    Positioned(
                    top: 60,
                    left: 130,
                    child: Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: Container(
                      height: 60,
                      width: 60,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.all(Radius.circular(10)),
                        
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          InkWell(
                            onTap: () {
                              launch('https://www.ntc.net.np/buy/packages');
                            },
                            child: Image.asset("images/ntc.png",width: MediaQuery.of(context).size.width,height: 50,),
                          ),
                        ],
                      ),
                      
                  ),
                  
                    ),
                    ),
                     Positioned(
                    top: 60,
                    left: 230,
                    child: Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: Container(
                      height: 60,
                      width: 60,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.all(Radius.circular(10)),
                        color: Colors.grey.shade300,
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          InkWell(
                            onTap: () {
                              launch("https://www.smarttel.com.np/offer/smart-data-pack");
                            },
                            child:  Image.asset("images/smartcell.png",width: MediaQuery.of(context).size.width,height: 60,),
                          ),
                        ],
                        
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