import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Login_Screen extends StatefulWidget {
  static const String id="login_screen";
  @override
  _Login_ScreenState createState() => _Login_ScreenState();
}

class _Login_ScreenState extends State<Login_Screen> {
  @override
  Widget build(BuildContext context) {
    return Material(
      child: Scaffold(
        backgroundColor: Colors.white,
        body: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start ,
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.only(top: 30),
                child: Icon(Icons.arrow_back, color: Colors.black, ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 30,left: 10),
                child: Text('Log in', style: TextStyle(color: Colors.black, fontSize: 40),),
              )
            ],
          ),
        ),
      ),
    );
  }
}
