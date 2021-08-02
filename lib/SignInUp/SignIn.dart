import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:grocery/SignInUp/SignUp.dart';
import 'package:grocery/colors/Colors.dart';
import 'package:grocery/passwordrecovery/PasswordRecovery.dart';

class SignIn extends StatefulWidget {
  const SignIn({Key? key}) : super(key: key);

  @override
  _SignInState createState() => _SignInState();
}

class _SignInState extends State<SignIn> {
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
                    "Sign In",
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
                    "Sign In with your email and Password to continue",
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
                        padding: const EdgeInsets.only(left: 12.0, top: 15.0),
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
                              hintStyle: TextStyle(color: Colors.white),
                              filled: true,
                              fillColor: Colors.black12,
                              border: InputBorder.none,
                            ),
                          ),
                        ),
                      ),
                      //>>>>>>>>>>>>>>>>>>>>>>> password>>>>>>>>>>>>>>>>>>>>>>>>>>>//
                      Padding(
                        padding: const EdgeInsets.only(left: 12.0, top: 12.0),
                        child: Text(
                          "Password",
                          style: TextStyle(color: Colors.grey),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 12.0, left: 10),
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
                              hintText: "Enter Password",
                              hintStyle: TextStyle(color: Colors.white),
                              filled: true,
                              fillColor: Colors.black12,
                              border: InputBorder.none,
                            ),
                          ),
                        ),
                      ),

                      // ................... check box ........................//
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: <Widget>[
                          new Row(
                            children: <Widget>[
                              new GestureDetector(
                                child: new Row(
                                  children: <Widget>[
                                    new Checkbox(
                                      value: _rememberMeFlag,
                                      onChanged: (value) => setState(() {
                                        _rememberMeFlag = !_rememberMeFlag;
                                      }),
                                    ),
                                    new Text(
                                      "Remember me",
                                      style: new TextStyle(color: Colors.white),
                                    )
                                  ],
                                ),
                                onTap: () => setState(() {
                                  _rememberMeFlag = !_rememberMeFlag;
                                }),
                              ),
                            ],
                          ),
                          GestureDetector(
                            onTap: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (_) => PasswordRecovery()));
                            },
                            child: new Container(
                              margin: new EdgeInsets.only(right: 30.0),
                              child: new Text(
                                "Forgot password ?",
                                style: new TextStyle(color: Colors.red),
                              ),
                            ),
                          )
                        ],
                      ),

                      /////////////////// end////////////////////////////////////////////////////////////////////
                    ],
                  ),
                ),

                GestureDetector(
                  onTap: () {
                    Navigator.push(
                        context, MaterialPageRoute(builder: (_) => Signup()));
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
                          "Sign In",
                          style: TextStyle(color: Colors.white),
                        ),
                      ),
                    ),
                  ),
                ),
                //////////////////////////////////////////////////////////////////////
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Padding(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 50.0, vertical: 10.0),
                      child: Container(
                        child: RichText(
                          text: TextSpan(
                            text: 'Don\'t have an account?',
                            style: TextStyle(
                              color: Colors.white,
                            ),
                            children: <TextSpan>[
                              TextSpan(
                                  text: ' Sign up',
                                  style: TextStyle(
                                      color: Colors.deepOrangeAccent,
                                      fontWeight: FontWeight.bold),
                                  recognizer: TapGestureRecognizer()
                                    ..onTap = () {
                                      Navigator.push(
                                          context,
                                          MaterialPageRoute(
                                              builder: (_) => Signup()));
                                      // navigate to desired screen
                                    }),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ],
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
