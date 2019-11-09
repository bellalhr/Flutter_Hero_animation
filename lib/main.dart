import 'package:flutter/material.dart';
import 'package:hero_animation/productDetails.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  final productItems = [
    {
      "product_name": "Classical Shoe",
      "current_price": "100",
      "old_price": "110",
      "offer": "10",
      "pic": "assets/images/shoe1.jpg",
    },
    {
      "product_name": "Normal Shoe",
      "current_price": "150",
      "old_price": "130",
      "offer": "0",
      "pic": "assets/images/shoe2.jpg",
    },
    {
      "product_name": "China Shoe",
      "current_price": "100",
      "old_price": "110",
      "offer": "10",
      "pic": "assets/images/shoe3.jpg",
    },
    {
      "product_name": "Lather Shoe",
      "current_price": "100",
      "old_price": "110",
      "offer": "10",
      "pic": "assets/images/shoe4.jpg",
    },
    {
      "product_name": "Lather Shoe",
      "current_price": "100",
      "old_price": "110",
      "offer": "10",
      "pic": "assets/images/shoe5.jpg",
    },
    {
      "product_name": "Lather Shoe",
      "current_price": "100",
      "old_price": "110",
      "offer": "10",
      "pic": "assets/images/shoe6.jpg",
    },
    {
      "product_name": "Lather Shoe",
      "current_price": "100",
      "old_price": "110",
      "offer": "10",
      "pic": "assets/images/shoe7.jpg",
    },
    {
      "product_name": "Lather Shoe",
      "current_price": "100",
      "old_price": "110",
      "offer": "10",
      "pic": "assets/images/shoe8.jpg",
    },
    {
      "product_name": "Lather Shoe",
      "current_price": "100",
      "old_price": "110",
      "offer": "10",
      "pic": "assets/images/shoe9.jpg",
    },
  ];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
          appBar: AppBar(
            title: Text('Product'),
          ),
          body: Container(
            child: GridView.builder(
                itemCount: productItems.length,
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2),
                itemBuilder: (BuildContext context, int index) {
                  return Product(
                    productName: productItems[index]['product_name'],
                    currentPrice: productItems[index]['current_price'],
                    oldPrice: productItems[index]['old_price'],
                    offer: productItems[index]['offer'],
                    pic: productItems[index]['pic'],
                  );
                }),
          )),
    );
  }
}

class Product extends StatelessWidget {
  final productName;
  final currentPrice;
  final oldPrice;
  final offer;
  final pic;

  Product(
      {this.productName,
      this.currentPrice,
      this.oldPrice,
      this.offer,
      this.pic});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Card(
        child: Hero(
          tag: pic,
          child: Material(
            child: InkWell(
              onTap: () {
                Navigator.push(
                    context, MaterialPageRoute(builder: (context) => ProductDetails(productName,currentPrice,oldPrice,offer,pic)));
              },
              child: GridTile(
                footer: Container(
                  color: Colors.black12,
                  child: ListTile(
                    leading: Text(productName,style: TextStyle(fontWeight: FontWeight.bold),),
                    title: Text('\$$currentPrice',style: TextStyle(fontWeight: FontWeight.bold),),
                    subtitle: Text('\$$oldPrice',style: TextStyle(fontWeight: FontWeight.bold,color: Colors.red,decoration: TextDecoration.lineThrough)),
                  ),
                ),
                 header: Container(
                   child: Column(
                     crossAxisAlignment: CrossAxisAlignment.end,
                     children: <Widget>[
                      Container(
                        color: Color(0xFFF7B436),
                        padding: EdgeInsets.all(5),
                        child:  Text('$offer\% off',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 15,color: Colors.white),),
                      )
                     ],
                   ),
                 ),
                 child: Image.asset(pic),
              )
            ),
          ),
        ),
      ),
    );
  }
}
