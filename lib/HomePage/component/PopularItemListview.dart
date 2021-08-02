import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:grocery/colors/Colors.dart';

class PopularDeal extends StatefulWidget {
  const PopularDeal({Key? key}) : super(key: key);

  @override
  _PopularDealState createState() => _PopularDealState();
}

class _PopularDealState extends State<PopularDeal> {
  @override
  Widget build(BuildContext context) {
    return ListView(
      scrollDirection: Axis.horizontal,
      children: [
        Container(
          width: MediaQuery.of(context).size.width * 0.400,
          height: MediaQuery.of(context).size.height * 0.250,
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
                    width: MediaQuery.of(context).size.width * 0.350,
                    height: MediaQuery.of(context).size.height * 0.180,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(20),
                      boxShadow: [
                        BoxShadow(
                          spreadRadius: 1,
                          blurRadius: 1,
                          offset: Offset(0.7, 0.7),
                        ),
                      ],
                    ),
                    child: Container(
                      margin: EdgeInsets.all(20),
                      child: Image.asset("images/mob3.jpg"),
                    ),
                  ),
                ),
              ),
              ///////////////////////// Text//////////////////////////////
              Text(
                "Lorem Ipsum",
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              Text("Lorem Ipsum"),
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
                child: Text(
                  "  Open  ",
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
              ),
              SizedBox(
                height: 5,
              ),
            ],
          ),
        ),

        //////////////////////////////////// 2nd Container//////////////////////////////////
        Padding(
          padding: const EdgeInsets.only(left: 4.0),
          child: Container(
            width: MediaQuery.of(context).size.width * 0.400,
            height: MediaQuery.of(context).size.height * 0.250,
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
                      width: MediaQuery.of(context).size.width * 0.350,
                      height: MediaQuery.of(context).size.height * 0.180,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(20),
                        boxShadow: [
                          BoxShadow(
                            spreadRadius: 1,
                            blurRadius: 1,
                            offset: Offset(0.7, 0.7),
                          ),
                        ],
                      ),
                      child: Container(
                        margin: EdgeInsets.all(20),
                        child: Image.asset("images/mob3.jpg"),
                      ),
                    ),
                  ),
                ),
                ///////////////////////// Text//////////////////////////////
                Text(
                  "Lorem Ipsum",
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
                Text("Lorem Ipsum"),
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
                  child: Text(
                    "  Open  ",
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                ),
                SizedBox(
                  height: 5,
                ),
              ],
            ),
          ),
        ),
        //////////////////////////3rd Container//////////////////////////////
        Padding(
          padding: const EdgeInsets.only(left: 4.0),
          child: Container(
            width: MediaQuery.of(context).size.width * 0.400,
            height: MediaQuery.of(context).size.height * 0.250,
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
                      width: MediaQuery.of(context).size.width * 0.350,
                      height: MediaQuery.of(context).size.height * 0.180,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(20),
                        boxShadow: [
                          BoxShadow(
                            spreadRadius: 1,
                            blurRadius: 1,
                            offset: Offset(0.7, 0.7),
                          ),
                        ],
                      ),
                      child: Container(
                        margin: EdgeInsets.all(20),
                        child: Image.asset("images/mob3.jpg"),
                      ),
                    ),
                  ),
                ),
                ///////////////////////// Text//////////////////////////////
                Text(
                  "Lorem Ipsum",
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
                Text("Lorem Ipsum"),
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
                  child: Text(
                    "  Open  ",
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                ),
                SizedBox(
                  height: 5,
                ),
              ],
            ),
          ),
        ),
        //////////////////5th Container//////////////////////////////////////////////////////////
        Padding(
          padding: const EdgeInsets.only(left: 4.0),
          child: Container(
            width: MediaQuery.of(context).size.width * 0.400,
            height: MediaQuery.of(context).size.height * 0.250,
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
                      width: MediaQuery.of(context).size.width * 0.350,
                      height: MediaQuery.of(context).size.height * 0.180,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(20),
                        boxShadow: [
                          BoxShadow(
                            spreadRadius: 1,
                            blurRadius: 1,
                            offset: Offset(0.7, 0.7),
                          ),
                        ],
                      ),
                      child: Container(
                        margin: EdgeInsets.all(20),
                        child: Image.asset("images/mob3.jpg"),
                      ),
                    ),
                  ),
                ),
                ///////////////////////// Text//////////////////////////////
                Text(
                  "Lorem Ipsum",
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
                Text("Lorem Ipsum"),
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
                  child: Text(
                    "  Open  ",
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                ),
                SizedBox(
                  height: 5,
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
