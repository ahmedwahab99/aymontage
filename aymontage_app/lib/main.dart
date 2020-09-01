import 'package:flutter/material.dart';
import 'View/Screens/LoggedOut_Screen.dart';
import 'View/Screens/Activity_Screen.dart';
import 'View/Screens/Feed_Screen.dart';
import 'View/Screens/LogIn_Screen.dart';
import 'View/Screens/Parent Page.dart';
import 'View/Screens/Post_in_Fullscreen.dart';
import 'View/Screens/Register_Screen.dart';
import 'View/Screens/Saved_posts_Screen.dart';
import 'View/Screens/Settings_Screen.dart';
import 'View/Screens/Videos_Screen.dart';


void main() => runApp(Aymoontage());

class Aymoontage extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(

      routes:
      {
        LoggedOutScreen.id: (context) => LoggedOutScreen(),
        Activity_Screen.id: (context)=>Activity_Screen(),
        Feed_Screen.id: (context)=>Feed_Screen(),
        Login_Screen.id: (context)=>Login_Screen(),
        Post_in_fullscreen.id: (context)=>Post_in_fullscreen(),
        Register_Screen.id: (context)=>Register_Screen(),
        Saved_posts_Screen.id: (context)=>Saved_posts_Screen(),
        Settings_Screen.id: (context)=>Settings_Screen(),
        Videos_Screen.id: (context)=>Videos_Screen(),
        TopScreen.id: (context)=>TopScreen(),
      },
      initialRoute: LoggedOutScreen.id,

    );
  }
}
