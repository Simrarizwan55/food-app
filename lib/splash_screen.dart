import "package:flutter/material.dart";
import "dart:async";
import "package:food_app/first_screen.dart";

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<StatefulWidget> createState() => _SplashScreenState();

}
class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    // Navigate to FirstScreen after a 2-second delay
    Timer(const Duration(seconds: 2), () {
      Navigator.pushReplacement( context,
        MaterialPageRoute(
          builder: (context) => FirstScreen(),
        ),
      );
    });
  }
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
            debugShowCheckedModeBanner: false,
        home: Scaffold(
            body: Container(
              decoration:  const BoxDecoration(
                image: DecorationImage(
                    image: AssetImage("assets/images/launch_background.png"),

                    fit: BoxFit.fill
                ),
              ),
              child: Center(
                child: Image.asset(
                  "assets/images/launch_logo.png", width: 300,),

              ),

            )
        )
    );
  }
}

