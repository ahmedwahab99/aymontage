import 'package:flutter/material.dart';

class Register_Screen extends StatefulWidget {
  static const String id="register_screen";
  @override
  _Register_ScreenState createState() => _Register_ScreenState();
}

class _Register_ScreenState extends State<Register_Screen> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Center(child: Text('hello this is register screen')),
    );
  }
}
