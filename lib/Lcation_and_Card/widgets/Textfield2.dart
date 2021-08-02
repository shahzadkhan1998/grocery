import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class OfficeTextField extends StatefulWidget {
  const OfficeTextField({Key? key}) : super(key: key);

  @override
  _OfficeTextFieldState createState() => _OfficeTextFieldState();
}

class _OfficeTextFieldState extends State<OfficeTextField> {
  TextEditingController controller = new TextEditingController();
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
              "Office",
              style:
                  TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
            ),
          ),
          ////////////////////////////////////////////// EditText for Office ///////////////////
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
                hintText: "Enter your office address",
                hintStyle: TextStyle(color: Colors.grey),
                filled: true,
                fillColor: Colors.black12,
                border: InputBorder.none,
              ),
              keyboardAppearance: Brightness.light,
            ),
          ),
        ],
      ),
    );
  }
}
