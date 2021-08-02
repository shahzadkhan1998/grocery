import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HomeTextField extends StatefulWidget {
  const HomeTextField({Key? key}) : super(key: key);

  @override
  _HomeTextFieldState createState() => _HomeTextFieldState();
}

class _HomeTextFieldState extends State<HomeTextField> {
  TextEditingController controller1 = TextEditingController();
  TextEditingController controller2 = TextEditingController();
  TextEditingController controller3 = TextEditingController();
  TextEditingController controller4 = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Container(
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
                    width: 2, color: Colors.orange, style: BorderStyle.solid),
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
                        controller: controller2,
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
                        controller: controller3,
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
                        controller: controller4,
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
    );
  }
}
