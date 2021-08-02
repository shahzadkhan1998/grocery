import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:grocery/HomePage/Product_detail/Product_detail.dart';
import 'package:grocery/colors/Colors.dart';

class IphoneMobile extends StatefulWidget {
  @override
  _IphoneMobileState createState() => _IphoneMobileState();
}

class _IphoneMobileState extends State<IphoneMobile> {
  var product_list = [
    {
      "name": "Iphone A",
      "picture": "images/mob9.jpg",
      "old_price": 120,
      "price": 50000,
      "Description": "This is first description here"
    },
    {
      "name": "Iphone B",
      "picture": "images/mob9.jpg",
      "old_price": 100,
      "price": 50,
    },
    {
      "name": "Iphone C",
      "picture": "images/mob9.jpg",
      "old_price": 100,
      "price": 50,
    },
    {
      "name": "Iphone D",
      "picture": "images/mob9.jpg",
      "old_price": 100,
      "price": 50,
    },
    {
      "name": "Iphone E",
      "picture": "images/mob9.jpg",
      "old_price": 100,
      "price": 50,
    },
    {
      "name": "Iphone F",
      "picture": "images/mob9.jpg",
      "old_price": 100,
      "price": 50,
    },
    {
      "name": "Iphone G",
      "picture": "images/mob9.jpg",
      "old_price": 100,
      "price": 50,
    },
    {
      "name": "Iphone H",
      "picture": "images/mob9.jpg",
      "old_price": 100,
      "price": 50,
    },
    {
      "name": "Iphone I",
      "picture": "images/mob9.jpg",
      "old_price": 100,
      "price": 50,
    },
    {
      "name": "Iphone J",
      "picture": "images/mob9.jpg",
      "old_price": 100,
      "price": 50,
    },
    {
      "name": "Iphone K",
      "picture": "images/mob9.jpg",
      "old_price": 100,
      "price": 50,
    },
    {
      "name": "Iphone L",
      "picture": "images/mob9.jpg",
      "old_price": 100,
      "price": 50,
    },
    {
      "name": "Iphone M",
      "picture": "images/mob9.jpg",
      "old_price": 100,
      "price": 50,
    },
    {
      "name": "Iphone N",
      "picture": "images/mob9.jpg",
      "old_price": 100,
      "price": 50,
    },
    {
      "name": "Iphone O",
      "picture": "images/mob9.jpg",
      "old_price": 100,
      "price": 50,
    },
    {
      "name": "Iphone P",
      "picture": "images/mob9.jpg",
      "old_price": 100,
      "price": 50,
    },
    {
      "name": "Iphone Q",
      "picture": "images/mob9.jpg",
      "old_price": 100,
      "price": 50,
    },
    {
      "name": "Iphone R",
      "picture": "images/mob9.jpg",
      "old_price": 100,
      "price": 50,
    },
    {
      "name": "Iphone S",
      "picture": "images/mob9.jpg",
      "old_price": 100,
      "price": 50,
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Iphone LIST",
          style: GoogleFonts.adamina(color: Colors.white, fontSize: 15),
        ),
        centerTitle: true,
        backgroundColor: Color(0xFF121945),
        leading: Icon(Icons.arrow_back_ios),
      ),
      body: Container(
        padding: EdgeInsets.all(10),
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        color: ColorConstants.darkblue,
        child: GridView.builder(
            itemCount: product_list.length,
            gridDelegate: new SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 3),
            itemBuilder: (BuildContext context, int index) {
              return Padding(
                padding: const EdgeInsets.all(4.0),
                child: Single_prod(
                  prod_name: product_list[index]['name'],
                  prod_pricture: product_list[index]['picture'],
                  prod_old_price: product_list[index]['old_price'],
                  prod_price: product_list[index]['price'],
                  Description: product_list[index]['Description'],
                ),
              );
            }),
      ),
    );
  }
}

class Single_prod extends StatelessWidget {
  final prod_name;
  final prod_pricture;
  final prod_old_price;
  final prod_price;
  final Description;

  Single_prod({
    this.prod_name,
    this.prod_pricture,
    this.prod_old_price,
    this.prod_price,
    this.Description,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        print(prod_name.toString());
        Navigator.push(
            context,
            MaterialPageRoute(
                builder: (_) => ProductDetail(
                      product_detail_name: prod_name,
                      product_detail_new_price: prod_price,
                      product_detail_picture: prod_pricture,
                      product_detail_description: Description,
                    )));
      },
      child: Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        decoration: BoxDecoration(
          color: ColorConstants.gold,
          borderRadius: BorderRadius.circular(10.0),
        ),
        child: Column(
          children: [
            Expanded(
              child: Container(
                width: MediaQuery.of(context).size.width,
                height: MediaQuery.of(context).size.height,
                margin: EdgeInsets.all(5),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: Colors.white,
                ),
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Image.asset(prod_pricture),
                ),
              ),
            ),
            Container(
              child: Text(
                prod_name,
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
            ),
            Container(
              child: Text(prod_price.toString()),
            ),
            Container(
              width: 50,
              height: 20,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(10),
                boxShadow: [
                  BoxShadow(
                    spreadRadius: 1,
                    blurRadius: 1,
                    offset: Offset(0.7, 0.7),
                  ),
                ],
              ),
              child: Text(
                "Show",
                textAlign: TextAlign.center,
              ),
            ),
            SizedBox(
              height: 4,
            ),
          ],
        ),
      ),
    );
  }
}
