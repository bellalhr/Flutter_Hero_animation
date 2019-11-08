import 'package:flutter/material.dart';

class ProductDetails extends StatelessWidget {
  final productName;
  final currentPrice;
  final oldPrice;
  final offer;
  final pic;

  ProductDetails(
      this.productName,
      this.currentPrice,
      this.oldPrice,
      this.offer,
      this.pic
      );

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.white70,
        appBar: AppBar(
          title: Text('Product Details'),
        ),
        body: Container(
          child: Column(
            children: <Widget>[
              Hero(
                  tag: pic,
                  child:Image.asset(pic,),
              ),
              Center(
                child: Column(
                  children: <Widget>[


                    SizedBox(
                      height: 10,
                    ),
                    Text('Product name : $productName',style: TextStyle(fontWeight: FontWeight.bold),),
                    SizedBox(
                      height: 10,
                    ),
                    Text('Price  : \$$currentPrice',style: TextStyle(color: Colors.redAccent),),
                    SizedBox(
                      height: 10,
                    ),
                    Text('offer  : \$$offer',style: TextStyle(color: Colors.yellow),)
                  ],
                ),
              )
            ],
          )
        ),
      ),
    );
  }
}
