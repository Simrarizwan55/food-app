import "package:food_app/splash_screen.dart";
import "package:flutter/material.dart";


//import 'first_screen.dart';

//FUNCTION EXPRESSION
void main() => runApp(MyFlutterApp());


class MyFlutterApp extends StatelessWidget
{
  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "My flutter App",
      home: SplashScreen(),
    );
  }

}