import  'package:flutter/material.dart';

class loginScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Material(
        child: Center(
          child:Text("login screen",
          style: TextStyle(
            fontStyle: FontStyle.italic,
            color: Colors.pink,
            decorationStyle: TextDecorationStyle.wavy,
            fontWeight: FontWeight.bold,
            fontSize: 20,
            ),
          )
        ),
      )
    );
  }
}
