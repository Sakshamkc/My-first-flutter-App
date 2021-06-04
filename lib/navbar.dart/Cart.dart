
import 'package:firstproject/Model/product_model.dart';
import 'package:firstproject/Pages/product_details.dart';
import 'package:flutter/material.dart';
import 'package:flutter_icons/flutter_icons.dart';

class Cart extends StatefulWidget {
  @override
  _CartState createState() => _CartState();
}

class _CartState extends State<Cart> {
  List <Product> products = [
    Product(
      id: "P100",
      productName: "Laptops"
      ,price: "Rs 50000",sellingPrice: "Rs 35000",
      sale: true,description: "It is a new laptops and is very popular",
      image: "http://cdn.mos.cms.futurecdn.net/6t8Zh249QiFmVnkQdCCtHK.jpg"),
      Product(
      id: "P200",
      productName: "Smart phones",
      price: "Rs 40000",
      sellingPrice: "Rs 30000",
      sale: false,
      description: "Very nice products and cheap ",
      image: "https://static.toiimg.com/photo/73078527.cms"),
      Product(
      id: "P300",
      productName: "Watch"
      ,price: "Rs 10000",
      sellingPrice: "Rs 5000",
      sale: true,
      description: "It is a very good watch and is digital",
      image: "https://rukminim1.flixcart.com/image/332/398/kka1si80/watch/4/t/k/tw-02524-teenager-luxurious-fashion-silicone-black-colored-led-original-imafznht7bzfmj7d.jpeg?q=50"),
       Product(
      id: "P400",
      productName: "Cycle"
      ,price: "Rs 40000",
      sellingPrice: "Rs 25000",
      sale: false,
      description: "It is a very orginal cycle ",
      image: "https://images-na.ssl-images-amazon.com/images/I/715wCxNPK4L._SX425_.jpg"),
       Product(
      id: "P500",
      productName: "Bikes"
      ,price: "Rs 400000",
      sellingPrice: "Rs 250000",
      sale: true,
      description: "It is a very orginal Bikes",
      image: "https://images.hindustantimes.com/auto/img/2020/05/13/600x338/indian-ftr-1200_1588172877332_1588172877642_1589370092100.jpg"),
       Product(
      id: "P600",
      productName: "Car"
      ,price: "Rs 4000000",
      sellingPrice: "Rs 2500000",
      sale: false,
      description: "It is a very orginal Car",
      image: "https://stimg.cardekho.com/images/carexteriorimages/930x620/Tata/Harrier/7503/1608617769033/front-left-side-47.jpg"),
       Product(
      id: "P700",
      productName: "Ipad"
      ,price: "Rs 40000",
      sellingPrice: "Rs 25000",
      sale: true,
      description: "It is a very orginal Ipad",
      image: "https://www.apple.com/newsroom/images/product/ipad/standard/apple_ipados14_widgets_062220_big.jpg.large.jpg"),
      


  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Drawer(),
       appBar: AppBar(
          backgroundColor: Colors.green,
        leading: Builder(builder: (context) => IconButton(icon: Icon(FontAwesome.cart_arrow_down), onPressed: () {
          Scaffold.of(context).openDrawer();
        }),),
        bottom: PreferredSize(child: Padding(
              padding: const EdgeInsets.all(20.0),
              child: Container(
                decoration: BoxDecoration(
                  color: Colors.white,
                ),
                child: TextField(
                  decoration: InputDecoration(
                    hintText: 'Search',
                    suffixIcon: Icon(Icons.search),
                    contentPadding: EdgeInsets.all(15),
                  ),
                ),
              ),
        ),
        preferredSize: Size.fromHeight(70),
        ),
        ),
      body: SingleChildScrollView(
                    child: Padding(
                      padding: const EdgeInsets.all(20.0),
                      child: Column(
              children: [
                ListView.builder(
                  shrinkWrap: true,
                  physics: NeverScrollableScrollPhysics(),
                  itemCount: products.length,
                  itemBuilder: (context, index) {
                      return Card(
                        child: ListTile(
                          onTap: () {
                            Navigator.push(context, PageRouteBuilder(
                              transitionDuration: Duration(seconds: 2),
                              pageBuilder: (_,__,___) => ProductDetails(
                              id: products[index].id,
                              productName: products[index].productName,
                              description: products[index].description,
                              image: products[index].image,
                              price: products[index].price,
                              sale: products[index].sale,
                              sellingPrice: products[index].sellingPrice,)
                            ),);
                          },
                          trailing: products[index].sale == true ? Text("Sale",style: TextStyle(color: Colors.red),) :Text(""),
                          leading: Hero(
                            tag: products[index].id,
                            child: CircleAvatar(
                              backgroundImage: NetworkImage(products[index].image),
                            ),
                          ),
                          title: Text(products[index].productName),
                          subtitle: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              products[index].sale == true ?
                              Text(products[index].price,style: TextStyle(decoration: TextDecoration.lineThrough),) 
                              :Text(products[index].price),

                              products[index].sale == true
                              ? Text(
                             products[index].sellingPrice,
                             )
                             : Text(""),
                              
                            ],
                          ),
                        ),
                      );
                  },
                ),
              ],
            ),
                    ),
          ),
    );
  }
}