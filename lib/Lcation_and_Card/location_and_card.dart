import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:grocery/colors/Colors.dart';
import 'package:grocery/shoppingDetail/ShoppingDetail.dart';

class LocationAndCard extends StatefulWidget {
  final home;
  final office;
  final Mcard;
  final Vcard;
  LocationAndCard({this.home, this.office, this.Mcard, this.Vcard});

  @override
  _LocationAndCardState createState() => _LocationAndCardState();
}

class _LocationAndCardState extends State<LocationAndCard> {
  TextEditingController controller1 = TextEditingController();
  TextEditingController controller2 = TextEditingController();
  TextEditingController controller3 = TextEditingController();
  TextEditingController controller4 = TextEditingController();
  TextEditingController controller5 = TextEditingController();
  TextEditingController controller6 = TextEditingController();
  bool _rememberMeFlag = false;
  bool _rememberMeFlag1 = false;
  bool _rememberMeFlag2 = false;
  //////////////////////////////////////////////////////////////////

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        resizeToAvoidBottomInset: false,
        backgroundColor: Color(0xFF121945),
        appBar: AppBar(
          title: Text(
            "Location and Card",
            style: TextStyle(color: Colors.white),
          ),
          backgroundColor: Color(0xFF121945),
          centerTitle: true,
          elevation: 0.2,
        ),
        body: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                padding: EdgeInsets.only(left: 10),
                child: Text(
                  "Address",
                  style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 20),
                ),
              ),
              /////////////////// Home label and TextField//////////////////////////////
              Container(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      padding: EdgeInsets.only(left: 15),
                      child: Text(
                        "Home",
                        style: TextStyle(
                            fontSize: 15,
                            fontWeight: FontWeight.bold,
                            color: Colors.white),
                      ),
                    ),
                    ///////////////////////////TextField/////////////////////////////
                    SizedBox(
                      height: 5,
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 10.0, right: 10.0),
                      child: Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          border: Border.all(
                              width: 2,
                              color: Colors.orange,
                              style: BorderStyle.solid),
                        ),
                        child: TextField(
                          controller: controller1,
                          keyboardType: TextInputType.emailAddress,
                          decoration: InputDecoration(
                            hintText: "Enter your Home address",
                            hintStyle: TextStyle(color: Colors.grey),
                            filled: true,
                            fillColor: Colors.black12,
                            border: InputBorder.none,
                          ),
                          keyboardAppearance: Brightness.light,
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Row(
                        children: [
                          ///////////////////////////// Country/////////////////////////////
                          Expanded(
                            child: Container(
                              child: Container(
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(20),
                                  border: Border.all(
                                      width: 2,
                                      color: Colors.orange,
                                      style: BorderStyle.solid),
                                ),
                                child: TextField(
                                  controller: controller1,
                                  keyboardType: TextInputType.emailAddress,
                                  decoration: InputDecoration(
                                    hintText: "Country",
                                    hintStyle: TextStyle(color: Colors.grey),
                                    filled: true,
                                    fillColor: Colors.black12,
                                    border: InputBorder.none,
                                  ),
                                  keyboardAppearance: Brightness.light,
                                ),
                              ),
                            ),
                          ),
                          ////////////////////////////////////// state///////////////////////////
                          Expanded(
                            child: Padding(
                              padding: const EdgeInsets.only(left: 3.0),
                              child: Container(
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(20),
                                  border: Border.all(
                                      width: 2,
                                      color: Colors.orange,
                                      style: BorderStyle.solid),
                                ),
                                child: TextField(
                                  controller: controller1,
                                  keyboardType: TextInputType.emailAddress,
                                  decoration: InputDecoration(
                                    hintText: "State",
                                    hintStyle: TextStyle(color: Colors.grey),
                                    filled: true,
                                    fillColor: Colors.black12,
                                    border: InputBorder.none,
                                  ),
                                  keyboardAppearance: Brightness.light,
                                ),
                              ),
                            ),
                          ),
                          /////////////////////////////// zipCode///////////////////////
                          Expanded(
                            child: Padding(
                              padding: const EdgeInsets.only(left: 3.0),
                              child: Container(
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(20),
                                  border: Border.all(
                                      width: 2,
                                      color: Colors.orange,
                                      style: BorderStyle.solid),
                                ),
                                child: TextField(
                                  controller: controller1,
                                  keyboardType: TextInputType.emailAddress,
                                  decoration: InputDecoration(
                                    hintText: "Enter Zip code",
                                    hintStyle: TextStyle(color: Colors.grey),
                                    filled: true,
                                    fillColor: Colors.black12,
                                    border: InputBorder.none,
                                  ),
                                  keyboardAppearance: Brightness.light,
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              /////////////////////// Office and TextField////////////////////////
              Container(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      padding: EdgeInsets.only(left: 15),
                      child: Text(
                        "Office",
                        style: TextStyle(
                            color: Colors.white, fontWeight: FontWeight.bold),
                      ),
                    ),
                    ////////////////////////////////////////////// EditText for Office ///////////////////
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          border: Border.all(
                              width: 2,
                              color: Colors.orange,
                              style: BorderStyle.solid),
                        ),
                        child: TextField(
                          controller: controller2,
                          keyboardType: TextInputType.emailAddress,
                          decoration: InputDecoration(
                            hintText: "Enter your office address",
                            hintStyle: TextStyle(color: Colors.grey),
                            filled: true,
                            fillColor: Colors.black12,
                            border: InputBorder.none,
                          ),
                          keyboardAppearance: Brightness.light,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              ///////////////////////// payment method and Textfield /////////////////////
              Container(
                child: Column(
                  children: [
                    SizedBox(
                      height: 10,
                    ),
                    Container(
                      child: Text(
                        "Payment Method",
                        style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                            fontSize: 20),
                      ),
                    ),
                    /////////////////// mking a textfield for payment/////////////////////
                    SizedBox(
                      height: 10,
                    ),
                    Container(
                      child: Text(
                        "Master Card",
                        style: TextStyle(color: Colors.white),
                      ),
                    ),
                    SizedBox(
                      height: 10,
                    ),

                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          border: Border.all(
                              width: 2,
                              color: Colors.orange,
                              style: BorderStyle.solid),
                        ),
                        child: TextField(
                          controller: controller3,
                          keyboardType: TextInputType.emailAddress,
                          decoration: InputDecoration(
                            hintText: "Enter your  Card Number",
                            hintStyle: TextStyle(color: Colors.grey),
                            filled: true,
                            fillColor: Colors.black12,
                            border: InputBorder.none,
                          ),
                          keyboardAppearance: Brightness.light,
                        ),
                      ),
                    ),
                    /////////////////////////////// Issue and Expire Date ////////////////////////
                    SizedBox(
                      height: 10,
                    ),
                    Row(
                      children: [
                        Container(
                          child: Text(
                            "Valid Until",
                            style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.bold),
                          ),
                        ),
                        ////////////////////// making a Editing Text for Issue and Expire ///////////
                        SizedBox(
                          width: 5,
                        ),
                        Expanded(
                          child: Container(
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(20),
                              border: Border.all(
                                  width: 2,
                                  color: Colors.orange,
                                  style: BorderStyle.solid),
                            ),
                            child: TextField(
                              controller: controller3,
                              keyboardType: TextInputType.emailAddress,
                              decoration: InputDecoration(
                                hintText: "issue",
                                hintStyle: TextStyle(color: Colors.grey),
                                filled: true,
                                fillColor: Colors.black12,
                                border: InputBorder.none,
                              ),
                              keyboardAppearance: Brightness.light,
                            ),
                          ),
                        ),
                        ///////////////////////////// making A Textfield fore Date Expire///////////
                        SizedBox(
                          width: 5,
                        ),
                        Expanded(
                          child: Container(
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(20),
                              border: Border.all(
                                  width: 2,
                                  color: Colors.orange,
                                  style: BorderStyle.solid),
                            ),
                            child: TextField(
                              controller: controller3,
                              keyboardType: TextInputType.emailAddress,
                              decoration: InputDecoration(
                                hintText: "Expire",
                                hintStyle: TextStyle(color: Colors.grey),
                                filled: true,
                                fillColor: Colors.black12,
                                border: InputBorder.none,
                              ),
                              keyboardAppearance: Brightness.light,
                            ),
                          ),
                        ),
                      ],
                    ),
                    ///////////////////////////// Making a CVV number and Card Holder///////////////
                    SizedBox(
                      height: 10,
                    ),
                    Row(
                      children: [
                        Expanded(
                          child: Container(
                            child: Container(
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(20),
                                border: Border.all(
                                    width: 2,
                                    color: Colors.orange,
                                    style: BorderStyle.solid),
                              ),
                              child: TextField(
                                controller: controller1,
                                keyboardType: TextInputType.emailAddress,
                                decoration: InputDecoration(
                                  hintText: "Cvv",
                                  hintStyle: TextStyle(color: Colors.grey),
                                  filled: true,
                                  fillColor: Colors.black12,
                                  border: InputBorder.none,
                                ),
                                keyboardAppearance: Brightness.light,
                              ),
                            ),
                          ),
                        ),
                        SizedBox(
                          width: 5,
                        ),
                        Expanded(
                          child: Container(
                            child: Container(
                              child: Container(
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(20),
                                  border: Border.all(
                                      width: 2,
                                      color: Colors.orange,
                                      style: BorderStyle.solid),
                                ),
                                child: TextField(
                                  controller: controller3,
                                  keyboardType: TextInputType.emailAddress,
                                  decoration: InputDecoration(
                                    hintText: "Card Holder",
                                    hintStyle: TextStyle(color: Colors.grey),
                                    filled: true,
                                    fillColor: Colors.black12,
                                    border: InputBorder.none,
                                  ),
                                  keyboardAppearance: Brightness.light,
                                ),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                    /////////////////////////////  making Label for a Cash delivery//////////////////
                    SizedBox(
                      height: 10,
                    ),
                    Row(
                      children: [
                        Container(
                          child: Checkbox(
                            onChanged: (bool? value) {
                              setState(() {
                                _rememberMeFlag1 = !_rememberMeFlag1;
                              });
                            },
                            value: _rememberMeFlag1,
                          ),
                        ),
                        SizedBox(
                          width: 20,
                        ),
                        Container(
                          child: Text(
                            "Cash on Delivery",
                            style: TextStyle(color: Colors.white),
                          ),
                        ),
                      ],
                    ),
                    //////////////////////////////////////////// Making a TExt for for Cash Delivery
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(left: 100.0),
                          child: Container(
                            child: Text(
                              "\$ 14",
                              textAlign: TextAlign.start,
                              style: TextStyle(color: Colors.white),
                            ),
                          ),
                        ),
                      ],
                    ),
                    ////////////////////////////////////////////////////////////////////////////////
                    /////////////////// making Button for THat//////////////////////////////////
                    SizedBox(
                      height: 50,
                    ),

                    ////////////////////////// making a Text for for Cash //////////////////
                  ],
                ),
              ),
              ///////////////////////// making a button///////////////////////////
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Expanded(
                    child: Container(
                      width: MediaQuery.of(context).size.width,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        color: ColorConstants.darkblue,
                        boxShadow: [
                          BoxShadow(
                            color: Colors.black12,
                            spreadRadius: 2,
                            blurRadius: 2,
                            offset: Offset(0.7, 0.7),
                          ),
                        ],
                      ),
                      height: 60,
                      child: Center(
                          child: Text(
                        "Total : \$ 14 ",
                        style: TextStyle(color: Colors.white),
                      )),
                    ),
                  ),
                  Expanded(
                    child: GestureDetector(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (_) => ShoppingDetails(
                                      homedetail: controller1.text,
                                      officedetail: controller2.text,
                                      issueDate: controller3.text,
                                      expireDate: controller3.text,
                                      Mcarddetail: controller4.text,
                                      CVVnumber: controller3.text,
                                    )));
                      },
                      child: Container(
                        width: MediaQuery.of(context).size.width,
                        height: 40,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          color: Colors.orange,
                          boxShadow: [
                            BoxShadow(
                              color: Colors.black38,
                              spreadRadius: 2,
                              blurRadius: 2,
                              offset: Offset(0.7, 0.7),
                            ),
                          ],
                        ),
                        child: Container(
                          child: Center(
                            child: Text("Check out"),
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ));
  }
}
