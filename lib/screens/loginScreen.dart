import  'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class LoginScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Material(
        child: SingleChildScrollView(
          child: Column(
            children: [
            Image.asset('assets/images/login.png'),
              Center(
              child:Text("login screen",
              style:GoogleFonts.arimo(),
              // style: TextStyle(
              //   fontStyle: FontStyle.italic,
              //   color: Colors.pink,
              //   decorationStyle: TextDecorationStyle.wavy,
              //   fontWeight: FontWeight.bold,
              //   fontSize: 20,
              //   ),
              )
            ),
            ]
          ),
        ),
      )
    );
  }
}
