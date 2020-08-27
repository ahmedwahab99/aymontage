import 'package:flutter/material.dart';

// ignore: camel_case_types
class Sign_button extends StatelessWidget {
  Sign_button({@required this.label, @required this.primaryColour, @required this.secondaryColour, @required this.route,});
  final Color primaryColour;
  final Color secondaryColour;
  final String label;
  double width=160;
  double height=50;
  String route;
  @override
  Widget build(BuildContext context) {
    return FlatButton(
        child: Container(
          width: this.width , height: this.height,
          decoration:  BoxDecoration(
            border: Border.all(color: Colors.black, width: 3),
            borderRadius: BorderRadius.circular(7),
            color: primaryColour,
            boxShadow: [
              BoxShadow(
                color: Colors.grey.withOpacity(0.5),
                spreadRadius: 5,
                blurRadius: 7,
                offset: Offset(0, 3), // changes position of shadow
              ),
            ],
          ),
          child: Center(
            child: Text(
              label,
              style: TextStyle(color: secondaryColour),
            ),
          ),


        ),
       onPressed: (){
          Navigator.pushNamed(context, route);
       } ,
    );
  }
}
