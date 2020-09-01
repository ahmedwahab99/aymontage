import 'package:aymontage_app/View/Screens/Parent%20Page.dart';
import 'package:aymontage_app/View/Screens/Videos_Screen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:sign_button/sign_button.dart';
import 'package:google_fonts/google_fonts.dart';

class Register_Screen extends StatefulWidget {
  static const String id="register_screen";
  @override
  _Register_ScreenState createState() => _Register_ScreenState();
}

class _Register_ScreenState extends State<Register_Screen> {
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
                child: Text('Register', style: GoogleFonts.comfortaa(color: Colors.black,fontSize: 40),),
              ),
              Center(
                child: Padding(
                  padding: const EdgeInsets.only(top: 150),
                  child: SignButton(
                    buttonType: ButtonType.google,
                    onPressed: (){

                      //TODO:navigate to google sign up
                    },
                    elevation: 20,
                    buttonSize: ButtonSize.large,
                    btnTextColor: Colors.white,
                    btnColor: Colors.blueGrey[900],
                    btnText: 'Sign up with Google',
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
