import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:grocery/Lcation_and_Card/location_and_card.dart';

class ShoppingDetails extends StatefulWidget {
  final homedetail;
  final officedetail;
  final Mcarddetail;
  final Vcarddetail;
  final issueDate;
  final expireDate;
  final CVVnumber;

  ShoppingDetails(
      {this.homedetail,
      this.officedetail,
      this.Mcarddetail,
      this.Vcarddetail,
      this.issueDate,
      this.expireDate,
      this.CVVnumber});

  //////////////// making a alert box.////////////////////////////////

  @override
  _ShoppingDetailsState createState() => _ShoppingDetailsState();
}

class _ShoppingDetailsState extends State<ShoppingDetails> {
  ShowAlerDialog(BuildContext context) {
    return showDialog(
      context: context,
      builder: (ctx) => AlertDialog(
        backgroundColor: Colors.grey,
        insetPadding: EdgeInsets.all(40),
        contentPadding: EdgeInsets.all(30),
        elevation: 10.0,
        title: Center(
            child: Text(
          "Details",
          style: GoogleFonts.allerta(color: Colors.black),
        )),
        content: Text("DO You Agree "),
        actions: <Widget>[
          TextButton(
            onPressed: () {
              Navigator.of(ctx).pop();
            },
            child: Text("okay"),
          ),
          // ignore: deprecated_member_use
          TextButton(
            onPressed: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (_) => LocationAndCard()));
            },
            child: Text("Cancel`"),
          ),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF121945),
      appBar: AppBar(
        backgroundColor: Color(0xFF121945),
        elevation: 0,
        title: Text(
          "Shopping Details",
          style: TextStyle(color: Colors.white),
        ),
        centerTitle: true,
      ),
      ///////////////////////////////////////////////////////////////////
      body: Padding(
        padding: const EdgeInsets.only(top: 10.0),
        child: Container(
          height: MediaQuery.of(context).size.height,
          decoration: BoxDecoration(
            color: Color(0xFF121945),
            borderRadius: BorderRadius.only(
                topRight: Radius.circular(20), topLeft: Radius.circular(20)),
            boxShadow: [
              BoxShadow(
                color: Colors.black12,
                spreadRadius: 2,
                blurRadius: 2,
                offset: Offset(0.7, 0.7),
              ),
            ],
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Container(
                child: Text(
                  "Location Details :",
                  textAlign: TextAlign.start,
                  style: TextStyle(color: Colors.white, fontSize: 30),
                ),
              ),
              Center(
                child: Padding(
                  padding: EdgeInsets.only(
                    left: 20,
                    top: 10,
                  ),
                  child: Container(
                    width: MediaQuery.of(context).size.width,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          "Home address : ",
                          style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 15,
                              color: Colors.white),
                        ),
                        ////////////////////////////////////////////////////////////////
                        Text(
                          widget.homedetail.toString(),
                          style: TextStyle(color: Colors.white),
                        )
                      ],
                    ),
                  ),
                ),
              ),
              Center(
                child: Padding(
                  padding: EdgeInsets.only(left: 20, top: 10),
                  child: Container(
                    width: MediaQuery.of(context).size.width,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          "Office Address : ",
                          style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 15,
                              color: Colors.white),
                        ),
                        Text(
                          widget.officedetail.toString(),
                          style: TextStyle(color: Colors.white),
                        )
                      ],
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 100.0),
                child: Container(
                  child: Text(
                    "Payment Details",
                    style: TextStyle(color: Colors.white, fontSize: 30),
                  ),
                ),
              ),
              Center(
                child: Padding(
                  padding: EdgeInsets.only(
                    left: 20,
                    top: 10,
                  ),
                  child: Container(
                    width: MediaQuery.of(context).size.width,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          "Master Card Number : ",
                          style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 15,
                              color: Colors.white),
                        ),
                        Text(
                          widget.Mcarddetail.toString(),
                          style: TextStyle(color: Colors.white),
                        )
                      ],
                    ),
                  ),
                ),
              ),
              //////////////////////////////////////////////////////////////
              Container(
                width: MediaQuery.of(context).size.width,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      child: Text(
                        "Date of Issue : ",
                        style: TextStyle(
                            color: Colors.white, fontWeight: FontWeight.bold),
                      ),
                    ),
                    Container(
                      child: Text(
                        widget.issueDate,
                        style: TextStyle(color: Colors.white),
                      ),
                    ),
                  ],
                ),
              ),
              ///////////////////////////////////////////////////////////////////////////
              Container(
                width: MediaQuery.of(context).size.width,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      child: Text(
                        "Date of Expire : ",
                        style: TextStyle(
                            color: Colors.white, fontWeight: FontWeight.bold),
                      ),
                    ),
                    Container(
                      child: Text(
                        widget.expireDate,
                        style: TextStyle(color: Colors.white),
                      ),
                    ),
                  ],
                ),
              ),
              ///////////////////////////////////////////////////////////////
              Container(
                width: MediaQuery.of(context).size.width,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      child: Text(
                        "CVV number : ",
                        style: TextStyle(
                            color: Colors.white, fontWeight: FontWeight.bold),
                      ),
                    ),
                    Container(
                      child: Text(
                        widget.CVVnumber,
                        style: TextStyle(color: Colors.white),
                      ),
                    ),
                  ],
                ),
              ),
              //////////////////////////////////////////////////////////////
              Padding(
                padding: const EdgeInsets.all(50.0),
                child: GestureDetector(
                  onTap: () {
                    print("button is clicked");
                    ShowAlerDialog(context);
                  },
                  child: Container(
                    width: MediaQuery.of(context).size.width / 2,
                    child: Container(
                      decoration: BoxDecoration(
                        color: Colors.orange,
                        borderRadius: BorderRadius.circular(30),
                        boxShadow: [
                          BoxShadow(
                            blurRadius: 2,
                            spreadRadius: 2,
                            offset: Offset(0.7, 0.7),
                          ),
                        ],
                      ),
                      child: Center(
                        child: Container(
                            padding: EdgeInsets.all(10),
                            child: Text("Buy Now")),
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
