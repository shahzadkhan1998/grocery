import 'dart:async';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:grocery/colors/Colors.dart';
import 'package:grocery/pageview/PageView.dart';

class SplashScreen extends StatefulWidget {
  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    Timer(
        Duration(seconds: 10),
        () => Navigator.of(context).pushReplacement(MaterialPageRoute(
            builder: (BuildContext context) => MyStatelessWidget())));
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      height: MediaQuery.of(context).size.height,
      color: ColorConstants.customdark,
      child: Center(
          child: ClipOval(
        child: Container(
          width: MediaQuery.of(context).size.width * 0.800,
          height: MediaQuery.of(context).size.height * 0.300,
          color: ColorConstants.customdark,
          child: Image.asset(
            'images/nsss.png',
            width: MediaQuery.of(context).size.width * 0.800,
            height: MediaQuery.of(context).size.height * 0.300,
            fit: BoxFit.fill,
          ),
        ),
      )),
    );
  }
}
