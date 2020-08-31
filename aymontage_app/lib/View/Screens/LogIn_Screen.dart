import 'package:aymontage_app/View/Screens/Feed_Screen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:sign_button/sign_button.dart';
import 'package:google_fonts/google_fonts.dart';

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
                padding: const EdgeInsets.only(top: 30, ),
                child: FlatButton(
                  child: Padding(
                    padding: const EdgeInsets.only(right: 40),
                    child: Icon(
                      Icons.arrow_back_ios,
                      color: Colors.black,
                    ),
                  ),
                  onPressed: ()
                  {
                    Navigator.pop(context);
                  },
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 30,left: 20),
                child: Text('Log in', style: GoogleFonts.comfortaa(color: Colors.black,fontSize: 40),),
              ),
              Center(
                child: Padding(
                  padding: const EdgeInsets.only(top: 150),
                  child: SignButton(
                      buttonType: ButtonType.google,
                      onPressed: (){

                        //TODO:navigate to google autherization

                        Navigator.pushNamed(context, Feed_Screen.id);
                      },
                    elevation: 20,
                    buttonSize: ButtonSize.large,
                    btnTextColor: Colors.white,
                    btnColor: Colors.blueGrey[900],
                  ).show(),
                ),
              )

            ],
          ),
        ),
      ),
    );
  }
}
