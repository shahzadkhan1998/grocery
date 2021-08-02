import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:grocery/colors/Colors.dart';

class AdsListView extends StatefulWidget {
  const AdsListView({Key? key}) : super(key: key);

  @override
  _AdsListViewState createState() => _AdsListViewState();
}

class _AdsListViewState extends State<AdsListView> {
  @override
  Widget build(BuildContext context) {
    return ListView(
      scrollDirection: Axis.horizontal,
      children: [
        Container(
          padding: EdgeInsets.all(0.8),
          width: MediaQuery.of(context).size.width * 0.900,
          height: MediaQuery.of(context).size.height,
          decoration: BoxDecoration(
            color: Colors.orange,
            borderRadius: BorderRadius.circular(20),
            boxShadow: [
              BoxShadow(
                color: ColorConstants.pink,
                blurRadius: 2,
                spreadRadius: 2,
                offset: Offset(0.7, 0.7),
              ),
            ],
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ListTile(
                leading: Container(
                  width: MediaQuery.of(context).size.width * 0.200,
                  height: MediaQuery.of(context).size.height * 0.200,
                  decoration: new BoxDecoration(
                    shape: BoxShape.circle,
                    boxShadow: [
                      BoxShadow(
                        color: Colors.black38,
                        blurRadius: 5,
                        spreadRadius: 5,
                        offset: Offset(0.7, 0.7),
                      ),
                    ],
                    image: new DecorationImage(
                        fit: BoxFit.fill, image: AssetImage("images/mob3.jpg")),
                  ),
                ),
                title: Center(
                  child: Text(
                    "30% DISCOUNT",
                    style: TextStyle(
                        color: Colors.white, fontWeight: FontWeight.w700),
                  ),
                ),
                subtitle: Text(
                  "Order any food from app and get the discount",
                  textAlign: TextAlign.center,
                  style: TextStyle(color: Colors.white),
                ),
                trailing: Container(
                  width: MediaQuery.of(context).size.width * 0.200,
                  height: MediaQuery.of(context).size.height * 0.050,
                  decoration: BoxDecoration(
                    color: Colors.black,
                    borderRadius: BorderRadius.circular(20),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.white,
                        blurRadius: 2,
                        spreadRadius: 2,
                        offset: Offset(0.7, 0.7),
                      ),
                    ],
                  ),
                  child: Center(
                    child: Text(
                      "Order Now",
                      style: TextStyle(color: Colors.white),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
        ///////////////////// 2nd container //////////////////////////////////////////
        Padding(
          padding: const EdgeInsets.only(left: 10.0),
          child: Container(
            padding: EdgeInsets.all(0.8),
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height,
            decoration: BoxDecoration(
              color: Colors.orange,
              borderRadius: BorderRadius.circular(20),
              boxShadow: [
                BoxShadow(
                  color: ColorConstants.pink,
                  blurRadius: 2,
                  spreadRadius: 2,
                  offset: Offset(0.7, 0.7),
                ),
              ],
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ListTile(
                  leading: Container(
                    width: MediaQuery.of(context).size.width * 0.200,
                    height: MediaQuery.of(context).size.height * 0.200,
                    decoration: new BoxDecoration(
                      shape: BoxShape.circle,
                      boxShadow: [
                        BoxShadow(
                          color: Colors.black38,
                          blurRadius: 5,
                          spreadRadius: 5,
                          offset: Offset(0.7, 0.7),
                        ),
                      ],
                      image: new DecorationImage(
                          fit: BoxFit.fill,
                          image: AssetImage("images/mob9.jpg")),
                    ),
                  ),
                  title: Center(
                    child: Text(
                      "30% DISCOUNT",
                      style: TextStyle(
                          color: Colors.white, fontWeight: FontWeight.w700),
                    ),
                  ),
                  subtitle: Text(
                    "Order any food from app and get the discount",
                    textAlign: TextAlign.center,
                    style: TextStyle(color: Colors.white),
                  ),
                  trailing: Container(
                    width: MediaQuery.of(context).size.width * 0.200,
                    height: MediaQuery.of(context).size.height * 0.050,
                    decoration: BoxDecoration(
                      color: Colors.black,
                      borderRadius: BorderRadius.circular(20),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.white,
                          blurRadius: 2,
                          spreadRadius: 2,
                          offset: Offset(0.7, 0.7),
                        ),
                      ],
                    ),
                    child: Center(
                      child: Text(
                        "Order Now",
                        style: TextStyle(color: Colors.white),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
        ///////////////// 3rd Container /////////////////////////////////
        Padding(
          padding: const EdgeInsets.only(left: 10.0),
          child: Container(
            padding: EdgeInsets.all(0.8),
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height,
            decoration: BoxDecoration(
              color: Colors.orange,
              borderRadius: BorderRadius.circular(20),
              boxShadow: [
                BoxShadow(
                  color: ColorConstants.pink,
                  blurRadius: 5,
                  spreadRadius: 5,
                  offset: Offset(0.7, 0.7),
                ),
              ],
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ListTile(
                  leading: Container(
                    width: MediaQuery.of(context).size.width * 0.200,
                    height: MediaQuery.of(context).size.height * 0.200,
                    decoration: new BoxDecoration(
                      shape: BoxShape.circle,
                      boxShadow: [
                        BoxShadow(
                          color: Colors.black38,
                          blurRadius: 5,
                          spreadRadius: 5,
                          offset: Offset(0.7, 0.7),
                        ),
                      ],
                      image: new DecorationImage(
                          fit: BoxFit.fill,
                          image: AssetImage("images/mob3.jpg")),
                    ),
                  ),
                  title: Center(
                    child: Text(
                      "30% DISCOUNT",
                      style: TextStyle(
                          color: Colors.white, fontWeight: FontWeight.w700),
                    ),
                  ),
                  subtitle: Text(
                    "Order any food from app and get the discount",
                    textAlign: TextAlign.center,
                    style: TextStyle(color: Colors.white),
                  ),
                  trailing: Container(
                    width: MediaQuery.of(context).size.width * 0.200,
                    height: MediaQuery.of(context).size.height * 0.050,
                    decoration: BoxDecoration(
                      color: Colors.black,
                      borderRadius: BorderRadius.circular(20),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.white,
                          blurRadius: 2,
                          spreadRadius: 2,
                          offset: Offset(0.7, 0.7),
                        ),
                      ],
                    ),
                    child: Center(
                      child: Text(
                        "Order Now",
                        style: TextStyle(color: Colors.white),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
