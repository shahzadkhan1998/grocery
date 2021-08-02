import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:grocery/colors/Colors.dart';

class Category extends StatefulWidget {
  const Category({Key? key}) : super(key: key);

  @override
  _CategoryState createState() => _CategoryState();
}

class _CategoryState extends State<Category> {
  @override
  Widget build(BuildContext context) {
    return ListView(
      scrollDirection: Axis.horizontal,
      children: [
        GestureDetector(
          child: Container(
            width: MediaQuery.of(context).size.width * 0.300,
            height: MediaQuery.of(context).size.height * 0.180,
            decoration: BoxDecoration(
              color: ColorConstants.gold,
              borderRadius: BorderRadius.circular(20),
              boxShadow: [
                BoxShadow(
                  blurRadius: 2,
                  spreadRadius: 2,
                  offset: Offset(0.7, 0.7),
                ),
              ],
            ),
            child: Column(
              children: [
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.all(5.0),
                    child: Container(
                      width: MediaQuery.of(context).size.width * 0.300,
                      height: MediaQuery.of(context).size.height * 0.180,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(15),
                        boxShadow: [
                          BoxShadow(
                            spreadRadius: 1,
                            blurRadius: 1,
                            offset: Offset(0.7, 0.7),
                          ),
                        ],
                      ),
                      child: Container(
                        margin: EdgeInsets.all(10),
                        child: Image.asset("images/mob7.jpg"),
                      ),
                    ),
                  ),
                ),
                ///////////////////////// Text//////////////////////////////
                Text(
                  "IPHONE",
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
                Container(
                  margin: EdgeInsets.only(bottom: 2),
                  child: Text("4gb RAM"),
                ),
                Container(
                  margin: EdgeInsets.only(bottom: 5),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(20),
                    boxShadow: [
                      BoxShadow(
                        blurRadius: 1,
                        spreadRadius: 1,
                        offset: Offset(0.7, 0.7),
                      ),
                    ],
                  ),
                  child: Container(
                    height: 20,
                    width: 50,
                    child: Text(
                      "Show",
                      textAlign: TextAlign.center,
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                  ),
                ),
                SizedBox(
                  height: 3,
                ),
              ],
            ),
          ),
        ),
        ////////////////////// Container 2 /////////////////////////////////////
        Padding(
          padding: const EdgeInsets.only(left: 10.0),
          child: Container(
            width: MediaQuery.of(context).size.width * 0.300,
            height: MediaQuery.of(context).size.height * 0.180,
            decoration: BoxDecoration(
              color: ColorConstants.gold,
              borderRadius: BorderRadius.circular(20),
              boxShadow: [
                BoxShadow(
                  blurRadius: 2,
                  spreadRadius: 2,
                  offset: Offset(0.7, 0.7),
                ),
              ],
            ),
            child: Column(
              children: [
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.all(5.0),
                    child: Container(
                      width: MediaQuery.of(context).size.width * 0.300,
                      height: MediaQuery.of(context).size.height * 0.180,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(15),
                        boxShadow: [
                          BoxShadow(
                            spreadRadius: 1,
                            blurRadius: 1,
                            offset: Offset(0.7, 0.7),
                          ),
                        ],
                      ),
                      child: Container(
                        margin: EdgeInsets.all(10),
                        child: Image.asset("images/mob3.jpg"),
                      ),
                    ),
                  ),
                ),
                ///////////////////////// Text//////////////////////////////
                Text(
                  "Samsung",
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
                Padding(
                  padding: const EdgeInsets.only(bottom: 2.0),
                  child: Container(child: Text("8gb ram")),
                ),
                Container(
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(20),
                    boxShadow: [
                      BoxShadow(
                        blurRadius: 1,
                        spreadRadius: 1,
                        offset: Offset(0.7, 0.7),
                      ),
                    ],
                  ),
                  child: Container(
                    width: 50,
                    height: 20,
                    child: Text(
                      "Show",
                      textAlign: TextAlign.center,
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                  ),
                ),
                SizedBox(
                  height: 3,
                ),
              ],
            ),
          ),
        ),
        ///////////////////////////////// 3rd Container /////////////////////////////////////////////
        Padding(
          padding: const EdgeInsets.only(left: 10.0),
          child: Container(
            width: MediaQuery.of(context).size.width * 0.300,
            height: MediaQuery.of(context).size.height * 0.180,
            decoration: BoxDecoration(
              color: ColorConstants.gold,
              borderRadius: BorderRadius.circular(20),
              boxShadow: [
                BoxShadow(
                  blurRadius: 2,
                  spreadRadius: 2,
                  offset: Offset(0.7, 0.7),
                ),
              ],
            ),
            child: Column(
              children: [
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.all(5.0),
                    child: Container(
                      width: MediaQuery.of(context).size.width * 0.300,
                      height: MediaQuery.of(context).size.height * 0.180,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(15),
                        boxShadow: [
                          BoxShadow(
                            spreadRadius: 1,
                            blurRadius: 1,
                            offset: Offset(0.7, 0.7),
                          ),
                        ],
                      ),
                      child: Container(
                        margin: EdgeInsets.all(10),
                        child: Image.asset("images/mob3.jpg"),
                      ),
                    ),
                  ),
                ),
                ///////////////////////// Text//////////////////////////////
                Text(
                  "Samsung",
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
                Padding(
                  padding: const EdgeInsets.only(bottom: 2.0),
                  child: Container(child: Text("8gb ram")),
                ),
                Container(
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(20),
                    boxShadow: [
                      BoxShadow(
                        blurRadius: 1,
                        spreadRadius: 1,
                        offset: Offset(0.7, 0.7),
                      ),
                    ],
                  ),
                  child: Container(
                    width: 50,
                    height: 20,
                    child: Text(
                      "Show",
                      textAlign: TextAlign.center,
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                  ),
                ),
                SizedBox(
                  height: 3,
                ),
              ],
            ),
          ),
        ),
        /////////////////////////////// 4th Container ///////////////////////////////////////////
        Padding(
          padding: const EdgeInsets.only(left: 10.0),
          child: Container(
            width: MediaQuery.of(context).size.width * 0.300,
            height: MediaQuery.of(context).size.height * 0.180,
            decoration: BoxDecoration(
              color: ColorConstants.gold,
              borderRadius: BorderRadius.circular(20),
              boxShadow: [
                BoxShadow(
                  blurRadius: 2,
                  spreadRadius: 2,
                  offset: Offset(0.7, 0.7),
                ),
              ],
            ),
            child: Column(
              children: [
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.all(5.0),
                    child: Container(
                      width: MediaQuery.of(context).size.width * 0.300,
                      height: MediaQuery.of(context).size.height * 0.180,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(15),
                        boxShadow: [
                          BoxShadow(
                            spreadRadius: 1,
                            blurRadius: 1,
                            offset: Offset(0.7, 0.7),
                          ),
                        ],
                      ),
                      child: Container(
                        margin: EdgeInsets.all(10),
                        child: Image.asset("images/mob3.jpg"),
                      ),
                    ),
                  ),
                ),
                ///////////////////////// Text//////////////////////////////
                Text(
                  "Samsung",
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
                Padding(
                  padding: const EdgeInsets.only(bottom: 2.0),
                  child: Container(child: Text("8gb ram")),
                ),
                Container(
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(20),
                    boxShadow: [
                      BoxShadow(
                        blurRadius: 1,
                        spreadRadius: 1,
                        offset: Offset(0.7, 0.7),
                      ),
                    ],
                  ),
                  child: Container(
                    width: 50,
                    height: 20,
                    child: Text(
                      "Show",
                      textAlign: TextAlign.center,
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                  ),
                ),
                SizedBox(
                  height: 3,
                ),
              ],
            ),
          ),
        ),
        //////////////////// 5th Container //////////////////////////////////
        Padding(
          padding: const EdgeInsets.only(left: 10.0),
          child: Container(
            width: MediaQuery.of(context).size.width * 0.300,
            height: MediaQuery.of(context).size.height * 0.180,
            decoration: BoxDecoration(
              color: ColorConstants.gold,
              borderRadius: BorderRadius.circular(20),
              boxShadow: [
                BoxShadow(
                  blurRadius: 2,
                  spreadRadius: 2,
                  offset: Offset(0.7, 0.7),
                ),
              ],
            ),
            child: Column(
              children: [
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.all(5.0),
                    child: Container(
                      width: MediaQuery.of(context).size.width * 0.300,
                      height: MediaQuery.of(context).size.height * 0.180,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(15),
                        boxShadow: [
                          BoxShadow(
                            spreadRadius: 1,
                            blurRadius: 1,
                            offset: Offset(0.7, 0.7),
                          ),
                        ],
                      ),
                      child: Container(
                        margin: EdgeInsets.all(10),
                        child: Image.asset("images/mob3.jpg"),
                      ),
                    ),
                  ),
                ),
                ///////////////////////// Text//////////////////////////////
                Text(
                  "Samsung",
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
                Padding(
                  padding: const EdgeInsets.only(bottom: 2.0),
                  child: Container(child: Text("8gb ram")),
                ),
                Container(
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(20),
                    boxShadow: [
                      BoxShadow(
                        blurRadius: 1,
                        spreadRadius: 1,
                        offset: Offset(0.7, 0.7),
                      ),
                    ],
                  ),
                  child: Container(
                    width: 50,
                    height: 20,
                    child: Text(
                      "Show",
                      textAlign: TextAlign.center,
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                  ),
                ),
                SizedBox(
                  height: 3,
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
