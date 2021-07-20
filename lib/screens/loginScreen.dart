import 'dart:html';

import 'package:flutter/material.dart';
import 'package:flutter_2_2_test/utils/routes.dart';

class LoginScreen extends StatefulWidget {
  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final TextEditingController? controllerUsername = TextEditingController();

  final TextEditingController? controllerPassword = TextEditingController();
  bool touched = false;
  final _formkey = GlobalKey<FormState>();

  void pressed() async {
    if (_formkey.currentState!.validate()) {
      print(
          "are you sure for username value is '${controllerUsername!.text}' and password is '${controllerPassword!.text}'");
      this.touched = true;
      setState(() {});
      print("future delayed is to call");
      await Future.delayed(Duration(seconds: 1));
      print("future delayed is called");
      print("Navigator delay is to call");
      await Navigator.pushNamed(context, MyRoutes.homeRoute);
      print("Navigator delay is called");
      setState(() {
        this.touched = false;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Container(
        child: Material(
      child: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.symmetric(vertical: 16, horizontal: 32),
          child: Form(
            key: _formkey,
            child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Image.asset(
                    "assets/images/login.png",
                    fit: BoxFit.scaleDown,
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Text(
                    "Welcome ${controllerUsername!.text}",
                    style: TextStyle(fontSize: 22),
                    // style:GoogleFonts.arimo(),
                  ),
                  TextFormField(
                    validator: (value) {
                      if (value!.isEmpty) {
                        return "username is empty";
                      } else {
                        return null;
                      }
                    },
                    onChanged: (String value) {
                      setState(() {});
                    },
                    controller: controllerUsername,
                    maxLines: 1,
                    decoration: InputDecoration(
                      hintText: "Enter Username",
                      labelText: "Username",
                    ),
                  ),
                  TextFormField(
                    validator: (value) {
                      if (value!.isEmpty) {
                        return "password is empty";
                      } else if (value.length < 6) {
                        return "Password length is less than 6 character";
                      } else
                        return null;
                    },
                    controller: controllerPassword,
                    obscureText: true,
                    maxLines: 1,
                    decoration: InputDecoration(
                      hintText: "Enter Password",
                      labelText: "Password",
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Material(
                    borderRadius: touched
                        ? BorderRadius.circular(30)
                        : BorderRadius.circular(6),
                    color: Colors.deepPurple,
                    child: InkWell(
                      onTap: () async {
                        pressed();
                      },
                      child: AnimatedContainer(
                        duration: Duration(seconds: 1),
                        alignment: Alignment.center,
                        height: 40,
                        width: touched ? 40 : 80,
                        // color: Theme.of(context).colorScheme.primaryVariant,
                        child: touched
                            ? Icon(Icons.done)
                            : Text(
                                "login",
                                style: TextStyle(
                                  color: Colors.white,
                                ),
                              ),
                      ),
                    ),
                  )
                ]),
          ),
        ),
      ),
    ));
  }
}
