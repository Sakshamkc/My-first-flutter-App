import 'package:flutter/material.dart';

class Governmentpayment extends StatefulWidget {
  @override
  _GovernmentpaymentState createState() => _GovernmentpaymentState();
}

class _GovernmentpaymentState extends State<Governmentpayment> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [
          Padding(
            padding: const EdgeInsets.all(15.0),
            child: Icon(Icons.search),
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Stack(
          children: [
            Padding(
              padding: const EdgeInsets.all(15.0),
              child: Container(
                height: 250,
                width: MediaQuery.of(context).size.width,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(26),
                  color: Colors.grey.shade300,
                ),
                
              ),
              
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(10, 30, 10, 10),
              child: GridView.count(
                shrinkWrap: true,
                physics: NeverScrollableScrollPhysics(),
                crossAxisCount: 3,
                children: [
                    Center(
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            InkWell(
                              onTap: () {
                                Navigator.pushNamed(context, "/TrafficPolice");
                              },
                              child:Image.asset("images/traffic.jpg",width: 60,),
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            Text("Traffic Police Fine Payment",style: Theme.of(context).textTheme.caption,),
                          ],
                        ),
                    ),
                    Center(
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            InkWell(
                              onTap: () {
                                Navigator.pushNamed(context, "/Inland");
                              },
                              child:Image.asset("images/nepal.jpg",width: 60,),
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            Text("Inland Revenue Department",style: Theme.of(context).textTheme.caption,),
                          ],
                        ),
                    ),
                    Center(
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            InkWell(
                              onTap: () {
                                 Navigator.pushNamed(context, "/LocalGovernment");
                              },
                              child:Image.asset("images/nepal.jpg",width: 60,),
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            Text("Local Government",style: Theme.of(context).textTheme.caption,),
                          ],
                        ),
                    ),
                    Center(
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            InkWell(
                              onTap: () {
                                Navigator.pushNamed(context, "/Foreign");
                              },
                              child:Image.asset("images/foreign.png",width: 60,),
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            Text("Foreign Employment",style: Theme.of(context).textTheme.caption,),
                          ],
                        ),
                    ),
                ],
                ),
            ),
              
          ],
        ),
      ),
    );
  }
}