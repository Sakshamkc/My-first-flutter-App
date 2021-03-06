import 'package:carousel_pro/carousel_pro.dart';
import 'package:firstproject/provider/theme_provider.dart';
import 'package:firstproject/widget/changetheme.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    final text = Provider.of<ThemeProvider>(context).themeMode == ThemeMode.dark
        ? 'DarkTheme'
        : 'LightTheme';
    return Scaffold(
      drawer: Drawer(
        child: ListView(
          children: [
            UserAccountsDrawerHeader(accountName: Text("Saksham kc"), accountEmail: Text("Sakshamkc10@gmail.com"),
            currentAccountPicture: CircleAvatar(child: Text("S"),),
            ),
             ],
        ),
      ),
      appBar: AppBar(
        leading: Builder(builder: (context) => IconButton(icon: Icon(Icons.home), onPressed: () {
          Scaffold.of(context).openDrawer();
        }),),
        backgroundColor: Colors.deepPurple.shade200,
        actions: [
          ChangeThemeButtonWidget(),
        ],
        
        bottom: PreferredSize(child: Padding(
              padding: const EdgeInsets.all(20.0),
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(40),
                  color: Colors.white,
                ),
                child: TextField(
                  decoration: InputDecoration(
                    
                    hintText: 'Search',
                    suffixIcon: Icon(Icons.search),
                    contentPadding: EdgeInsets.all(10),
                  ),
                ),
              ),
        ),
        preferredSize: Size.fromHeight(80),
        ),
        ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(15.0),
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
               
          Padding(
              padding: const EdgeInsets.all(20.0),
              child: Stack(
                overflow: Overflow.visible,
              children: [
                 Container(
                height: 200,
                width: MediaQuery.of(context).size.width,
                child: Image.network("https://images-platform.99static.com//FGsSlFXGSLubdG8taAcFXY0rmFo=/224x197:990x965/fit-in/590x590/99designs-contests-attachments/116/116338/attachment_116338603",fit: BoxFit.cover,),
              ),
              Positioned(
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(50),
                                  child: Container(
                    alignment: Alignment.center,
                      width: 80,
                      height: 80,
                      color: Colors.black,
                      child: Text("30% off",style: TextStyle(
                        color: Colors.white,
                      ),),
              ),
                ),
                top: -20,
                right: -20,

              ),
              Container(
                height: 200,
                alignment: Alignment.bottomLeft,
                width: MediaQuery.of(context).size.width,
                child: Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: Text("Best Gadget in town",style: TextStyle(fontSize: 24,
                  color: Colors.white),
                  ),
                ),
              ),
              ],
            
              ),
            ),

           GridView.count(
              physics: NeverScrollableScrollPhysics(),
              shrinkWrap: true,
              crossAxisCount: 3,
              children: [
                Card(
                  child: Center(
                    
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        InkWell(
                          onTap: () {
                            Navigator.pushNamed(context, "/Electricity");
                          },
                          child:Image.asset("images/electricity.png",width: 60,),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Text("Electricity",style: Theme.of(context).textTheme.caption,),
                      ],
                    ),
                  ),
                ),
               
                Card(
                  child: Center(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        InkWell(
                          onTap: () {
                              Navigator.pushNamed(context, "/Khanepani");
                          },
                          child: Image.asset('images/water.png',width: 60,),
                        ),
                        
                        SizedBox(
                          height: 10,
                        ),
                        
                        Text("Khanepani",style: Theme.of(context).textTheme.caption,),
                      ],
                    ),
                  ),
                ),
               
                Card(
                  
                  child: Center(
                  
                    child: Column(
                      
                      mainAxisAlignment: MainAxisAlignment.center,
                      
                      children: [
                       InkWell(
                         onTap: () {
                           Navigator.pushNamed(context, "/Topup");
                         },
                         child: Image.asset('images/power-bank.png',width: 60,),
                       ),
                        SizedBox(
                          height: 10,
                        ),
                        InkWell(
                          onTap: () {
                            Navigator.pushNamed(context, "/Topup");
                          },
                          child:Text("topup",style: Theme.of(context).textTheme.caption,),
                        ),
                      ],
                    ),
                  ),
                ),
                 Card(
                  child: Center(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        InkWell(
                          onTap: () {
                            Navigator.pushNamed(context, "/Internet");
                          },
                          child: Image.asset('images/internet.png',width: 60,),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        InkWell(
                          onTap: () {
                            Navigator.pushNamed(context, "/Internet");
                          },
                          child:Text("Internet",style: Theme.of(context).textTheme.caption,),
                        ),
                      ],
                    ),
                  ),
                ),
               Card(
                  child: Center(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        InkWell(
                          onTap: () {
                             Navigator.pushNamed(context, "/Movies");
                          },
                          child: Image.asset('images/movies.jpg',width: 60,),
                        ),
                       
                        SizedBox(
                          height: 10,
                        ),
                        InkWell(
                          onTap: () {
                            Navigator.pushNamed(context, "/Movies");
                          },
                          child: Text("Movies",style: Theme.of(context).textTheme.caption,),
                        ),
                        
                      ],
                      
                    ),
                  ),
                ),
               Card(
                  child: Center(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        InkWell(
                          onTap: () {
                            Navigator.pushNamed(context, "/Governmentpayment");
                          },
                          child:Image.asset('images/govpayment.jpg',width: 60,),

                        ),
 
                        SizedBox(
                          height: 10,
                        ),
                        InkWell(
                          onTap: () {
                             Navigator.pushNamed(context, "/Governmentpayment");
                          },
                          child: Text("Gov.Payment",style: Theme.of(context).textTheme.caption,),
                        ),
 
                      ],
                    ),
                  ),
                ),
              ],
          ),
            
            ],
          ),
        ),
      ),
    );
  }
}