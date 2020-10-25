import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'homePage.dart';
import 'myButtons.dart';

class LoginPage extends StatefulWidget {
  LoginPage({Key key}) : super(key: key);

  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final registerButton = SizedBox(
      width: 130,
      child: FlatButton(
          child: Text("Sign up",
              style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                  color: Color.fromRGBO(76, 99, 94, 1))),
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(0.0)),
          onPressed: () {
            print('ciao');
          }));

  final loginButton = SizedBox(
      width: 130,
      child: FlatButton(
          child: Text("Log In",
              style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                  color: Color.fromRGBO(76, 99, 94, 1))),
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(0.0)),
          onPressed: () {
            print('ciao');
          }));

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Column(
      children: [
        Expanded(
            child: Center(
          child: Container(
              //color: Colors.white,
              child: Text(
            'Welcome to Minimal Notes',
            style: GoogleFonts.alegreyaSansSc(fontSize: 50),
          )),
        )),
        Expanded(
            flex: 2,
            child: Container(
              //    decoration: BoxDecoration(
              //     gradient: LinearGradient(
              //        begin: Alignment.topLeft,
              //       end: Alignment.bottomRight,
              //      colors: [Colors., Colors.red]),
              //),
              child: Padding(
                padding: const EdgeInsets.all(130.0),
                child: Column(
                  children: [
                    SizedBox(
                      height: 100,
                    ),
                    MyButtons(
                      buttonText: 'Log in',
                    ),
                    MyButtons(
                      buttonText: 'Sign Up',
                    ),
                    FlatButton(
                        onPressed: () => Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => HomePage())),
                        child: Text(
                          'Anonymous Sign In',
                          textAlign: TextAlign.center,
                          style: TextStyle(color: Colors.grey[700]),
                        ))
                  ],
                ),
              ),
            ))
      ],
    ));
  }
}

//TODO: Build login/signUp service
