import 'package:flutter/material.dart';

class Internet extends StatefulWidget {
  @override
  _InternetState createState() => _InternetState();
}

class _InternetState extends State<Internet> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Internet"),
        actions: [
          Padding(
            padding: const EdgeInsets.all(10.0),
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
                      height:550,
                      width: MediaQuery.of(context).size.width,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.all(Radius.circular(10)),
                        
                        ),
                      ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Padding(
                    padding: const EdgeInsets.all(15.0),
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
                            Navigator.pushNamed(context, "/Worldlink");
                          },
                          child:Image.asset("images/worldlink.png",width: 60,),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Text("Worldlink",style: Theme.of(context).textTheme.caption,),
                      ],
                    ),
                ),
                 Center(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        InkWell(
                          onTap: () {
                            Navigator.pushNamed(context, "/Vianet");
                          },
                          child:Image.asset("images/vianet.png",width: 60,),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Text("Vianet",style: Theme.of(context).textTheme.caption,),
                      ],
                    ),
                ),
                 Center(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        InkWell(
                          onTap: () {
                            Navigator.pushNamed(context, "/Subisu");
                          },
                          child:Image.asset("images/subisu.jpg",width: 60,),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Text("Subisu",style: Theme.of(context).textTheme.caption,),
                      ],
                    ),
                ),
                   Center(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        InkWell(
                          onTap: () {
                            Navigator.pushNamed(context, "/ADSL");
                          },
                          child:Image.asset("images/ADSL.png",width: 60,),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Text("ADSL",style: Theme.of(context).textTheme.caption,),
                      ],
                    ),
                ),
                 Center(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        InkWell(
                          onTap: () {
                            Navigator.pushNamed(context, "/Classictech");
                          },
                          child:Image.asset("images/classictech.png",width: 60,),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Text("CLASSICTECH",style: Theme.of(context).textTheme.caption,),
                      ],
                    ),
                ),
                 Center(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        InkWell(
                          onTap: () {
                            Navigator.pushNamed(context, "/Arrownet");
                          },
                          child:Image.asset("images/arrownet.jpg",width: 60,),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Text("Arrow net",style: Theme.of(context).textTheme.caption,),
                      ],
                    ),
                ),
                 Center(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        InkWell(
                          onTap: () {
                            Navigator.pushNamed(context, "/Techmind");
                          },
                          child:Image.asset("images/Techmind.jpg",width: 60,),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Text("Techminds",style: Theme.of(context).textTheme.caption,),
                      ],
                    ),
                ),
                 Center(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        InkWell(
                          onTap: () {
                            Navigator.pushNamed(context, "/Websurfer");
                          },
                          child:Image.asset("images/websurfer.png",width: 60,),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Text("Websurfer",style: Theme.of(context).textTheme.caption,),
                      ],
                    ),
                ),
                 Center(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        InkWell(
                          onTap: () {
                            Navigator.pushNamed(context, "/Fiber");
                          },
                          child:Image.asset("images/fiber.jpg",width: 60,),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Text("NT FTTH",style: Theme.of(context).textTheme.caption,),
                      ],
                    ),
                ),
                 Center(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        InkWell(
                          onTap: () {
                            Navigator.pushNamed(context, "/PokharaInternet");
                          },
                          child:Image.asset("images/pokharainternet.jpg",width: 60,),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Text("Pokhara Internet",style: Theme.of(context).textTheme.caption,),
                      ],
                    ),
                ),
                 Center(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        InkWell(
                          onTap: () {
                            Navigator.pushNamed(context, "/AlphaCable");
                          },
                          child:Image.asset("images/alphacable.png",width: 60,),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Text("Alpha Cable",style: Theme.of(context).textTheme.caption,),
                      ],
                    ),
                ),
                 Center(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        InkWell(
                          onTap: () {
                            Navigator.pushNamed(context, "/ThreeVision");
                          },
                          child:Image.asset("images/3Gvision.png",width: 60,),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Text("3G Vision",style: Theme.of(context).textTheme.caption,),
                      ],
                    ),
                ),
                 Center(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        InkWell(
                          onTap: () {
                            Navigator.pushNamed(context, "/BBN");
                          },
                          child:Image.asset("images/BBN.jpg",width: 60,),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Text("BBN",style: Theme.of(context).textTheme.caption,),
                      ],
                    ),
                ),
                 Center(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        InkWell(
                          onTap: () {
                            Navigator.pushNamed(context, "/BiratCable");
                          },
                          child:Image.asset("images/Biratcable.jpg",width: 60,),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Text("Birat Cable",style: Theme.of(context).textTheme.caption,),
                      ],
                    ),
                ),
                 Center(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        InkWell(
                          onTap: () {
                            Navigator.pushNamed(context, "/SkyCable");
                          },
                          child:Image.asset("images/skycable.png",width: 60,),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Text("Sky Cable",style: Theme.of(context).textTheme.caption,),
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