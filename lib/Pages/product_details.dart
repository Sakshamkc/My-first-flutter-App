import 'package:flutter/material.dart';

class ProductDetails extends StatefulWidget {
   final String id;
  final String productName;
   final String price;
   final String sellingPrice;
   final String image;
  final bool sale;
  final String description;

  ProductDetails(
    {this.id,
    this.productName,
    this.price,
    this.sellingPrice,
    this.image,
    this.sale,
    this.description});
  @override
  _ProductDetailsState createState() => _ProductDetailsState();
}

class _ProductDetailsState extends State<ProductDetails> {
  int count =1;
  @override
  Widget build(BuildContext context) {
    return SafeArea(
          child: Scaffold(
        appBar: AppBar(
          title: Text("Product Details"),
        ),
          body: SingleChildScrollView(
      child:Column(
          children: [
            Container(
              height: 250,
              width: MediaQuery.of(context).size.width,
              child:  Hero(
                tag: widget.id,
                child: Image.network(widget.image,fit: BoxFit.cover),
              ),
                ),
              SizedBox(
                height: 10,
              ),
              ListTile(
                title: Text(widget.productName,style: TextStyle(fontSize: 28,fontWeight: FontWeight.w600),
                ),
                subtitle: Text(widget.description,style: TextStyle(fontSize: 20,fontWeight: FontWeight.w600 ),),
              ),
              ListTile(
                title: Text(widget.sellingPrice,style: TextStyle(fontSize: 24,fontWeight: FontWeight.w600),
                ),
              
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      height: 35,
                      color: Colors.grey,
                      child: Row(
                        children:[
                        IconButton(
                          onPressed: () {
                            setState(() {
                              count--;
                              if (count <1)
                              {
                                count =1;
                              }
                            });
                          },
                          icon: Icon(Icons.remove_circle),
                        ),
                        Text("$count") ,
                        IconButton(
                          onPressed: () {
                            setState(() {
                              count++;
                            });
                          },
                          icon: Icon(Icons.add_circle),),                     ],
                      ),
                    ),
                  RaisedButton(
                    
                    onPressed: () {},
                  child: Text("Add to Basket"),
                  ),
                  ],
                
                ),
              ),
          ],
        ),
      ),

        ),
    );
  }
}