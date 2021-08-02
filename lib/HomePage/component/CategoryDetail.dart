import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:grocery/colors/Colors.dart';
import 'package:grocery/mobileScreen/Huaweimobilescreen.dart';
import 'package:grocery/mobileScreen/IphoneMobileScreen.dart';
import 'package:grocery/mobileScreen/OppoMobileScreen.dart';
import 'package:grocery/mobileScreen/SamsungMobileScreen.dart';
import 'package:grocery/mobileScreen/VivoMobileScreen.dart';

class CategoryDetail extends StatefulWidget {
  @override
  _CategoryDetailState createState() => _CategoryDetailState();
}

class _CategoryDetailState extends State<CategoryDetail> {
  var product_list = [
    {
      "name": "Samsung ",
      "picture": "images/mob9.jpg",
      "old_price": 120,
      "price": 50000,
      "Description": "This is first description here"
    },
    {
      "name": "Appo",
      "picture": "images/mob9.jpg",
      "old_price": 100,
      "price": 50,
    },
    {
      "name": "IPHONE",
      "picture": "images/mob9.jpg",
      "old_price": 100,
      "price": 50,
    },
    {
      "name": "Huawei",
      "picture": "images/mob9.jpg",
      "old_price": 100,
      "price": 50,
    },
    {
      "name": "VIvo",
      "picture": "images/mob9.jpg",
      "old_price": 100,
      "price": 50,
    },
    {
      "name": "Appo",
      "picture": "images/mob9.jpg",
      "old_price": 100,
      "price": 50,
    },
    {
      "name": "Sony",
      "picture": "images/mob9.jpg",
      "old_price": 100,
      "price": 50,
    },
    {
      "name": "Infinix",
      "picture": "images/mob9.jpg",
      "old_price": 100,
      "price": 50,
    },
    {
      "name": "Nokia",
      "picture": "images/mob9.jpg",
      "old_price": 100,
      "price": 50,
    },
    {
      "name": "Techno",
      "picture": "images/mob9.jpg",
      "old_price": 100,
      "price": 50,
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Category List"),
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
                crossAxisCount: 2),
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
        if (prod_name.toString().contains("Samsung")) {
          Navigator.push(
              context, MaterialPageRoute(builder: (_) => SamsungMobile()));
        } else if (prod_name.toString().contains("Huawei")) {
          Navigator.push(
              context, MaterialPageRoute(builder: (_) => HuaweiMobile()));
        } else if (prod_name.toString().contains("IPHONE")) {
          Navigator.push(
              context, MaterialPageRoute(builder: (_) => IphoneMobile()));
        } else if (prod_name.toString().contains("VIvo")) {
          Navigator.push(
              context, MaterialPageRoute(builder: (_) => VivoMobile()));
        } else if (prod_name.toString().contains("Appo")) {
          Navigator.push(
              context, MaterialPageRoute(builder: (_) => OppoMobile()));
        }

        print(prod_name.toString());
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
              child: Text("4gb"),
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
