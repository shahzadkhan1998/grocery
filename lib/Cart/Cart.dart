import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:grocery/Lcation_and_Card/location_and_card.dart';
import 'package:hive/hive.dart';
import "package:hive_flutter/hive_flutter.dart";

// ignore: must_be_immutable
class Cart extends StatefulWidget {
  @override
  _CartState createState() => _CartState();

  int number = 0;
  // ignore: non_constant_identifier_names
  final CartProductName;
  final CartProductPrice;
  final qantity;

  Cart({
    this.CartProductName,
    this.CartProductPrice,
    this.qantity,
  });
}

class _CartState extends State<Cart> {
  static var name;
  static var price;
  static var quantity;
  var list = [
    {"name": name, "price": price, "quantity": quantity}
  ];
  /////////////////// CALL THE DATABASE FUNCTION///////////////////////
  testfunc() {
    var a = list.length;
    Fluttertoast.showToast(msg: a.toString());
  }

  @override
  // ignore: must_call_super
  initState() {
    testfunc();

    // Fluttertoast.showToast(msg: name.toString());
    // Fluttertoast.showToast(msg: price.toString());
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Cart"),
        centerTitle: true,
        leading: Icon(Icons.arrow_back_ios),
      ),
      body: FutureBuilder(
        future: Future.delayed(Duration(seconds: 0)),
        builder: (c, s) => s.connectionState == ConnectionState.done
            ? ListView.builder(
                itemCount: list.length,
                itemBuilder: (context, index) {
                  Hive.openBox("MyData");
                  var box = Hive.box('MyData');

                  box.put('name', this.widget.CartProductName);
                  box.put('price', this.widget.CartProductPrice);
                  box.put('quantity', widget.qantity);

                  name = box.get('name');
                  price = box.get('price');
                  quantity = box.get('quantity');
                  return Column(
                    children: [
                      Center(
                        child: Container(
                          margin: EdgeInsets.all(20),
                          padding: EdgeInsets.all(20),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                            color: Colors.white,
                            boxShadow: [
                              BoxShadow(
                                color: Colors.black26,
                                spreadRadius: 2,
                                blurRadius: 2,
                                offset: Offset(0.7, 0.7),
                              ),
                            ],
                          ),
                          child: Text("new Added item"),
                        ),
                      ),
                      ///////////// ListTile///////////////////
                      ListTile(
                        leading: Container(
                          child: Image.asset("images/mob10.jpg"),
                        ),
                        title: Container(
                          child: Text(widget.CartProductName != null
                              ? widget.CartProductName.toString()
                              : "No data found"),
                        ),
                        subtitle: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Container(
                              child: Text(widget.CartProductPrice != null
                                  ? widget.CartProductPrice.toString()
                                  : "No data found"),
                            ),
                            Container(
                              child: Text(widget.qantity != null
                                  ? widget.qantity.toString()
                                  : "No data found"),
                            ),
                          ],
                        ),
                        trailing: InkWell(
                          onTap: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (_) => LocationAndCard()));
                          },
                          child: Container(
                            decoration: BoxDecoration(
                              color: Colors.orange,
                              borderRadius: BorderRadius.circular(20),
                              boxShadow: [
                                BoxShadow(
                                  spreadRadius: 2,
                                  blurRadius: 2,
                                  offset: Offset(0.7, 0.7),
                                ),
                              ],
                            ),
                            child: Padding(
                              padding: const EdgeInsets.all(5.0),
                              child: Text(
                                "Check Out",
                                textAlign: TextAlign.center,
                                style: TextStyle(color: Colors.white),
                              ),
                            ),
                          ),
                        ),
                      ),
                      ////////////////////////////////// cart History////////////////

                      ////////////////////// lsittile for card Item history /////////
                      Center(
                        child: Container(
                          padding: EdgeInsets.all(20),
                          margin: EdgeInsets.all(20),
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(20),
                            boxShadow: [
                              BoxShadow(
                                color: Colors.black26,
                                spreadRadius: 2,
                                blurRadius: 2,
                                offset: Offset(0.7, 0.7),
                              ),
                            ],
                          ),
                          child: Text("last added item"),
                        ),
                      ),
                      ////////////////////////cart history item////////
                      ListTile(
                        leading: Container(
                          child: Image.asset("images/mob10.jpg"),
                        ),
                        title: Container(
                          child: Text(list[index]["name"].toString()),
                        ),
                        subtitle: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Container(
                              child: Text(list[index]["price"].toString()),
                            ),
                            Container(
                              child: Text(list[index]["quantity"].toString()),
                            ),
                          ],
                        ),
                        trailing: Container(
                          padding: EdgeInsets.all(5),
                          decoration: BoxDecoration(
                            color: Colors.orange,
                            borderRadius: BorderRadius.circular(20),
                            boxShadow: [
                              BoxShadow(
                                spreadRadius: 2,
                                blurRadius: 2,
                                offset: Offset(0.7, 0.7),
                              ),
                            ],
                          ),
                          child: Container(
                            child: Text(
                              "Check Out",
                              textAlign: TextAlign.center,
                              style: TextStyle(color: Colors.white),
                            ),
                          ),
                        ),
                      ),
                    ],
                  );
                })
            : Text(" Nota data"),
      ),
    );
  }
}
