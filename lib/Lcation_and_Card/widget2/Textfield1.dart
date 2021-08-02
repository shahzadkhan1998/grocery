import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class PaymentTextField extends StatefulWidget {
  const PaymentTextField({Key? key}) : super(key: key);

  @override
  _PaymentTextFieldState createState() => _PaymentTextFieldState();
}

class _PaymentTextFieldState extends State<PaymentTextField> {
  bool _rememberMeFlag1 = false;
  TextEditingController controller = new TextEditingController();
  TextEditingController controller1 = new TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Container(
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

          Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              border: Border.all(
                  width: 2, color: Colors.orange, style: BorderStyle.solid),
            ),
            child: TextField(
              controller: controller,
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
                      color: Colors.white, fontWeight: FontWeight.bold),
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
                    controller: controller,
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
                    controller: controller,
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
                        controller: controller1,
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
    );
  }
}
