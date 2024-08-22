import "package:flutter/material.dart";
import "package:food_app/login_screen.dart";
import "package:food_app/splash_screen.dart";

class FirstScreen extends StatelessWidget {
  const FirstScreen({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar( backgroundColor: Colors.transparent,
        leading: IconButton(
          onPressed: () {
            Navigator.push(context,MaterialPageRoute(builder: (context)=>const SplashScreen()),
            );
          },
          icon: const Icon( Icons.arrow_back_ios_new, ), ), ),
      body: Stack(
        children: [
               Image.asset("assets/images/launch_background.png"),
      Center( child:
      Padding( padding: const EdgeInsets.only(
        top: 100,
        bottom: 40,
        left: 34,
        right: 34, ),
        child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const Text("Nutrition for longevity", style: TextStyle(
                  color: Colors.blueAccent,fontStyle:FontStyle.normal ,fontSize: 26
                  , fontWeight: FontWeight.bold),),
          const SizedBox(height: 30),
              const Text(
                "Motivate, learn, track and grow for a life of longevity. Let's start your Real Transformation.",
                textAlign: TextAlign.center, style: TextStyle(
                color: Colors.blue, fontStyle:FontStyle.normal,fontSize: 20.0,),
              ),
              const SizedBox(height:30),
              Expanded(
                flex: 3,
             child: Image.asset("assets/images/launch_first.png",  fit: BoxFit.contain,),
                ),
              Expanded(
                child: Align( alignment: Alignment.bottomCenter,
                  child: ElevatedButton( onPressed: ()
                  {
                    Navigator.push(context,MaterialPageRoute(builder: (context)=>const LoginScreen()),
                    );
                  },
                    style: ElevatedButton.styleFrom( backgroundColor:Colors.blue,
                      fixedSize: const Size(250, 48), ),
                    child: const
                    Text( "Start to Transform", style: TextStyle( fontSize: 20, color: Colors.white,
                    ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
      ],
    ),
    );
  }
}
