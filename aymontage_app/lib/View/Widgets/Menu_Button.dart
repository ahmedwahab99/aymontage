import 'package:flutter/material.dart';

class MenuButton extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return   FlatButton(
      child: Padding(
        padding: const EdgeInsets.only(left: 35),
        child: Icon(
          Icons.menu,
          color: Colors.white,
        ),
      ),
    );
  }
}
