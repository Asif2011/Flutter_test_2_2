import 'package:flutter/material.dart';
import 'package:flutter_2_2_test/screens/homeScreen.dart';
import 'package:flutter_2_2_test/utils/routes.dart';
import 'package:google_fonts/google_fonts.dart';
import 'screens/loginScreen.dart';

void main() {
  runApp(MyApp());

}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      themeMode:ThemeMode.dark,
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        // This is the theme of your application.
        //
        // Try running your application with "flutter run". You'll see the
        // application has a blue toolbar. Then, without quitting the app, try
        // changing the primarySwatch below to Colors.green and then invoke
        // "hot reload" (press "r" in the console where you ran "flutter run",
        // or simply save your changes to "hot reload" in a Flutter IDE).
        // Notice that the counter didn't reset back to zero; the application
        // is not restarted.
        // primarySwatch: Colors.green,
        fontFamily: GoogleFonts.lato().fontFamily,
        colorScheme: ColorScheme.light(),

      ),
      // home: HomeScreen(),
      initialRoute: '/login',
      routes:{
        MyRoutes.homeRoute:(context){return HomeScreen();},
        MyRoutes.loginRoute:(context){return LoginScreen();},
        MyRoutes.homeRoute: (context){return HomeScreen();},
      },
    );
  }
}
