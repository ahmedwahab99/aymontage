import 'package:aymontage_app/View/Widgets/Sign_up&in_Button.dart';
import 'package:flutter/material.dart';

class LoggedOutScreen extends StatefulWidget {
  static const String id="welcome_screen";
  @override
  _LoggedOutScreenState createState() => _LoggedOutScreenState();
}

class _LoggedOutScreenState extends State<LoggedOutScreen> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Flexible(
          flex: 8,
          child: Container(
           // color: Colors.white10,
              decoration: new BoxDecoration( image: new DecorationImage( image: new AssetImage("images/loggedOut_page.gif"),  ) ),
          ),
        ),
        Flexible(
          flex: 1,
          child: Container(
            color: Colors.white,
            child: Row(

            )
          ),
        )
      ],
    );
  }
}
