import 'package:aymontage_app/View/Widgets/Sign_up&in_Button.dart';
import 'package:flutter/material.dart';
import 'LogIn_Screen.dart';
import 'Register_Screen.dart';

class LoggedOutScreen extends StatefulWidget {
  static const String id="welcome_screen";
  @override
  _LoggedOutScreenState createState() => _LoggedOutScreenState();
}

class _LoggedOutScreenState extends State<LoggedOutScreen> {
  @override
  Widget build(BuildContext context) {
    return Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: <Widget>[
          Flexible(
            flex: 8,

            child: Container(
             // color: Colors.white10,
                decoration: new BoxDecoration( image: new DecorationImage( image: new AssetImage("images/loggedOut_page.jpg",), fit: BoxFit.cover, ) ),
            ),
          ),
          Flexible(
            flex: 1,

            child: Container(
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(2)
              ),

              child: Padding(
                padding: const EdgeInsets.symmetric(vertical:8.0, horizontal: 10),
                child: Row(
                  children: <Widget>[
                    Sign_button(label: "Log in",primaryColour: Colors.white,secondaryColour: Colors.black,route: Login_Screen.id,),
                    SizedBox(width: 7,),
                    Sign_button(label: "Register",primaryColour: Colors.black,secondaryColour: Colors.white, route: Register_Screen.id,)
                  ],

                ),
              )
            ),
          )
        ],
      );

  }
}
