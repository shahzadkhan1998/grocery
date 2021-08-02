import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:grocery/colors/Colors.dart';
import 'package:grocery/passwordrecovery/verification.dart';

class PasswordRecovery extends StatefulWidget {
  const PasswordRecovery({Key? key}) : super(key: key);

  @override
  _PasswordRecoveryState createState() => _PasswordRecoveryState();
}

class _PasswordRecoveryState extends State<PasswordRecovery> {
  bool _rememberMeFlag = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height,
            decoration: BoxDecoration(
              color: ColorConstants.darkblue,
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ///////// General text //////////////

                Padding(
                  padding: const EdgeInsets.all(30.0),
                  child: Text(
                    "Recovery Email",
                    style:
                        GoogleFonts.adamina(color: Colors.white, fontSize: 30),
                    // style: TextStyle(
                    //     fontSize: 30,
                    //     fontWeight: FontWeight.bold,
                    //     color: Colors.white),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 40.0, right: 40),
                  child: Text(
                    "Enter your Recovery Email;",
                    textAlign: TextAlign.center,
                    style: GoogleFonts.adamina(
                      color: Colors.white,
                    ),
                    // style: TextStyle(color: Colors.white),
                  ),
                ),
                SizedBox(
                  height: 15,
                ),
                Container(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      //>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>> Email>>>>>>>>>>>>>>>//
                      Padding(
                        padding: const EdgeInsets.only(left: 12.0, top: 12.0),
                        child: Text(
                          "Email",
                          style: TextStyle(color: Colors.grey),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 10.0, left: 10),
                        child: Container(
                          width: MediaQuery.of(context).size.width * 0.900,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                            border: Border.all(
                                width: 2,
                                color: Colors.orange,
                                style: BorderStyle.solid),
                          ),
                          child: TextField(
                            keyboardType: TextInputType.emailAddress,
                            decoration: InputDecoration(
                              hintText: "Enter Email",
                              hintStyle: TextStyle(color: Colors.grey),
                              filled: true,
                              fillColor: Colors.black12,
                              border: InputBorder.none,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),

                GestureDetector(
                  onTap: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (_) => Verification()));
                  },
                  child: Padding(
                    padding: const EdgeInsets.only(top: 30.0),
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
