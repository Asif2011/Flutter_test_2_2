import 'package:flutter/material.dart';

class LoginScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
        child: Material(
      child: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.symmetric(vertical: 16, horizontal: 32),
          child:
              Column(crossAxisAlignment: CrossAxisAlignment.center, children: [
            Image.asset(
              "assets/images/login.png",
              fit: BoxFit.scaleDown,
            ),
            SizedBox(
              height: 20,
            ),
            Text(
              "Welcome",
              style: TextStyle(fontSize: 22) ,
              // style:GoogleFonts.arimo(),
            ),
            TextField(
              maxLines: 1,
              decoration: InputDecoration(
                hintText: "Enter Username",
                labelText: "Username",
              ),
            ),
            TextField(
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
            ElevatedButton(
              onPressed: () {Navigator.pushNamed(context, "/home");},
              style: ButtonStyle(
                minimumSize: MaterialStateProperty.all(Size(80,40)),
                backgroundColor: MaterialStateProperty.resolveWith<Color>(
                  (Set<MaterialState> states) {
                    if (states.contains(MaterialState.pressed)) {
                      return Colors.white10.withOpacity(0.5);
                    } else {
                      return Colors.purple.withOpacity(0.5);
                    }
                  }, // Use the component's default.
                ),
              ),
              child: Text("Login"),
            ),
          ]),
        ),
      ),
    ));
  }
}
