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

  void pressed() {
    print(
        "are you sure for username value is '${controllerUsername!.text}' and password is '${controllerPassword!.text}'");
        this.touched = !this.touched;
        
  }

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
              "Welcome ${controllerUsername!.text}",
              style: TextStyle(fontSize: 22),
              // style:GoogleFonts.arimo(),
            ),
            TextField(
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
            TextField(
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
            InkWell(
              onTap: ()async{
                pressed();
                setState(() {
                  
                });
                await Future.delayed(Duration(seconds:1));
                Navigator.pushNamed(context, MyRoutes.homeRoute);
              },
              child: AnimatedContainer(
                duration: Duration(seconds:1),
                alignment: Alignment.center,
                height: 40,
                width: touched?40:80,
                // color: Theme.of(context).colorScheme.primaryVariant,
                child: touched?Icon(Icons.done):Text(
                  "login",
                  style: TextStyle(
                    color: Colors.white,
                  ),
                ),
                decoration: BoxDecoration(
                  color: Colors.purple,
                  // shape: touched?BoxShape.circle:BoxShape.rectangle,
                  borderRadius: touched?BorderRadius.circular(30):BorderRadius.circular(6),

                ),
              ),
            )
            // ElevatedButton(
            //   onPressed: (){
            //     // pressed();
            //     // Navigator.pushNamed(context, MyRoutes.homeRoute);
            //   },
            //   style: ButtonStyle(
            //     minimumSize: MaterialStateProperty.all(Size(80,40)),
            //     backgroundColor: MaterialStateProperty.resolveWith<Color>(
            //       (Set<MaterialState> states) {
            //         if (states.contains(MaterialState.pressed)) {
            //           return Colors.white10.withOpacity(0.5);
            //         } else {
            //           return Colors.purple.withOpacity(0.5);
            //         }
            //       }, // Use the component's default.
            //     ),
            //   ),
            //   child: Text("Login"),
            // ),
          ]),
        ),
      ),
    ));
  }
}
