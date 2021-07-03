import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class Movies extends StatefulWidget {
  @override
  _MoviesState createState() => _MoviesState();
}

class _MoviesState extends State<Movies> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Movies"),
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
                height: 460,
                width: MediaQuery.of(context).size.width,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(15.0),
              child: GridView.count(
                physics: NeverScrollableScrollPhysics(),
                shrinkWrap: true,
                crossAxisCount:3,
                children: [
                  Center(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          InkWell(
                            onTap: () {
                              launch("https://bigmovies.com.np/");
                            },
                            child:Image.asset("images/bigmovies.png",width: 60,),
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Text("Big Movies",style: Theme.of(context).textTheme.caption,),
                        ],
                      ),
                  ),
                   Center(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          InkWell(
                            onTap: () {
                              launch("https://www.fcubecinemas.com/");
                            },
                            child:Image.asset("images/Fcube.jpg",width: 60,),
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Text("F cube",style: Theme.of(context).textTheme.caption,),
                        ],
                      ),
                  ),
                   Center(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          InkWell(
                            onTap: () {
                              launch("https://www.facebook.com/gk7movies/");
                            },
                            child:Image.asset("images/gopikrishna.jpg",width: 60,),
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Text("Gopi Krishna",style: Theme.of(context).textTheme.caption,),
                        ],
                      ),
                  ),
                  Center(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          InkWell(
                            onTap: () {
                              launch("https://www.centralmultiplex.com.np/");
                            },
                            child:Image.asset("images/centralmultiplex.jpg",width: 60,),
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Text("Central Multiple",style: Theme.of(context).textTheme.caption,),
                        ],
                      ),
                  ),
                  Center(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          InkWell(
                            onTap: () {
                              launch("https://cinema-ghar.com/");
                            },
                            child:Image.asset("images/cinemaghar.jpg",width: 60,),
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Text("Cinema Ghar",style: Theme.of(context).textTheme.caption,),
                        ],
                      ),
                  ),
                  Center(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          InkWell(
                            onTap: () {
                              launch("http://citycinemas.com.np/");
                            },
                            child:Image.asset("images/citycinema.png",width: 60,),
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Text("City Cinema",style: Theme.of(context).textTheme.caption,),
                        ],
                      ),
                  ),
                  Center(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          InkWell(
                            onTap: () {
                              launch("https://www.bsrmovies.com/");
                            },
                            child:Image.asset("images/BSR.jpg",width: 60,),
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Text("BSR",style: Theme.of(context).textTheme.caption,),
                        ],
                      ),
                  ),
                  Center(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          InkWell(
                            onTap: () {
                              launch("https://www.qfxcinemas.com");
                            },
                            child:Image.asset("images/QFX.png",width: 60,),
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Text("QFX",style: Theme.of(context).textTheme.caption,),
                        ],
                      ),
                  ),
                  Center(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          InkWell(
                            onTap: () {
                              launch("https://onecinemas.com.np/");
                            },
                            child:Image.asset("images/onecinema.png",width: 60,),
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Text("One Cinema",style: Theme.of(context).textTheme.caption,),
                        ],
                      ),
                  ),
                  Center(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          InkWell(
                            onTap: () {
                              launch("https://www.qscinemas.com/");
                            },
                            child:Image.asset("images/Q.jpg",width: 60,),
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Text("Q cinemas",style: Theme.of(context).textTheme.caption,),
                        ],
                      ),
                  ),
                  Center(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          InkWell(
                            onTap: () {
                              launch("https://www.facebook.com/stscinema/");
                            },
                            child:Image.asset("images/STS.png",width: 60,),
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Text("STS",style: Theme.of(context).textTheme.caption,),
                        ],
                      ),
                  ),
                  Center(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          InkWell(
                            onTap: () {
                              launch("https://cineflix.com/");
                            },
                            child:Image.asset("images/cineflix.jpg",width: 60,),
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Text("Cineflix",style: Theme.of(context).textTheme.caption,),
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