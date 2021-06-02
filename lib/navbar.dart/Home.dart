import 'package:carousel_pro/carousel_pro.dart';
import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.fromLTRB(0,126,0,0),
          child: Column(
            children : [
              SizedBox(
                  height: 200,
                  width: MediaQuery.of(context).size.width,
                  child: Carousel(
                    indicatorBgPadding: 5,
                    animationCurve: Curves.easeInOut,
                    animationDuration: Duration(seconds: 1),
                    images: [
                     Image.network("https://cdn.pixabay.com/photo/2015/04/23/22/00/tree-736885__340.jpg",fit: BoxFit.cover,),
                     Image.network("https://st.depositphotos.com/1428083/2946/i/600/depositphotos_29460297-stock-photo-bird-cage.jpg",fit: BoxFit.cover,),
                     Image.network("https://images.unsplash.com/photo-1494548162494-384bba4ab999?ixid=MnwxMjA3fDB8MHxzZWFyY2h8Mnx8c3VucmlzZXxlbnwwfHwwfHw%3D&ixlib=rb-1.2.1&w=1000&q=80",fit: BoxFit.cover,),
                     Image.network("https://www.sammobile.com/wp-content/uploads/2019/03/keyguard_default_wallpaper_silver.png",fit: BoxFit.cover,),
                    ],
                  )
),
            ],
          ),
        ),
      ),
    );
  }
}