import 'package:flutter/material.dart';
import 'package:grocery/colors/Colors.dart';
import 'package:pin_code_fields/pin_code_fields.dart';

import 'ResetPassword.dart';

class Verification extends StatefulWidget {
  const Verification({Key? key}) : super(key: key);

  @override
  _VerificationState createState() => _VerificationState();
}

class _VerificationState extends State<Verification> {
  int currentText = 0;
  TextEditingController textEditingController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: Column(
        children: [
          Container(
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height,
            color: ColorConstants.customdark,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ////////////////////////////////////////////////

                Padding(
                  padding: const EdgeInsets.only(top: 50.0),
                  child: Text(
                    "Verification",
                    style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: 30),
                  ),
                ),
                ////////////////////////////////////////////////////
                Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Text(
                    "we have sent the code to your number",
                    style: TextStyle(color: Colors.white),
                  ),
                ),
                /////////////////////////////////////////////////////////////
                Padding(
                  padding: const EdgeInsets.only(top: 8.0, bottom: 8.0),
                  child: PinCodeTextField(
                    textStyle: TextStyle(color: Colors.white),
                    obscureText: false,
                    cursorColor: Colors.white70,
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    length: 4,
                    animationType: AnimationType.fade,
                    pinTheme: PinTheme(
                      shape: PinCodeFieldShape.underline,
                      activeColor: Colors.white,
                      selectedFillColor: Colors.white60,
                      inactiveColor: Colors.green,
                      activeFillColor: Colors.deepPurpleAccent,
                      fieldHeight: 60,
                      fieldWidth: 50,
                    ),
                    animationDuration: Duration(
                      milliseconds: 300,
                    ),
                    controller: textEditingController,
                    onCompleted: (v) {
                      print("Completed");
                    },
                    onChanged: (value) {
                      print(value);
                      setState(() {
                        currentText = value as int;
                      });
                    },
                    beforeTextPaste: (text) {
                      print("Allowing to paste $text");
                      //if you return true then it will show the paste confirmation dialog. Otherwise if false, then nothing will happen.
                      //but you can show anything you want here, like your pop up saying wrong paste format or etc
                      return true;
                    },
                    appContext: context,
                  ),
                ),
                GestureDetector(
                  onTap: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (_) => ResetPassword()));
                  },
                  child: Padding(
                    padding: const EdgeInsets.only(top: 20.0),
                    child: Container(
                      width: MediaQuery.of(context).size.width / 2,
                      height: 50,
                      decoration: BoxDecoration(
                        color: Colors.orange,
                        borderRadius: BorderRadius.circular(30),
                      ),
                      child: Center(
                        child: Text(
                          "Continue",
                          style: TextStyle(color: Colors.white),
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
      //>>>>>>>>>>>>>>>>>>>  4nd container>>>>>>>>>>>>>>>>>>>>>>>>>>>>//
    );
  }
}
