import "package:flutter/material.dart";
import "package:food_app/login_screen.dart";
import "package:food_app/verify_email.dart";
import "package:food_app/widgets/password_text_field.dart";


class UpdatePassword extends StatelessWidget {

  const UpdatePassword({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        leading: IconButton(
          onPressed: () {
            Navigator.push(context,MaterialPageRoute(builder: (context)=>const VerifyEmail()),
            );
          },
          icon: const Icon(Icons.arrow_back_ios_new),
        ),
      ),
      body: Stack(
        children: [
          Image.asset(
            "assets/images/launch_login.png", fit: BoxFit.cover,
            width: double.infinity,),
          Center(
            child: Padding(
              padding: const EdgeInsets.only(
                top: 50,
                bottom: 50,
                left: 40,
                right: 40,
              ),
              child: SingleChildScrollView(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    const SizedBox(
                      height: 10,
                    ),
                    const Text(
                      "Update Password",
                      style: TextStyle(
                          color: Colors.black,
                          fontStyle: FontStyle.normal,
                          fontSize: 30,
                          fontWeight: FontWeight.bold),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    const Text(
                      "Enter your new password.",
                      style: TextStyle(color: Colors.black,
                          fontStyle: FontStyle.normal, fontSize: 20,
                          fontWeight: FontWeight.normal),
                    ),
                    const SizedBox(
                      height: 40,
                    ),
                    const PasswordTextField(),
                    const SizedBox(height: 20,),
                    const PasswordTextField(),
                    const SizedBox(height: 40,),
                    Align(
                      alignment: Alignment.center,
                      child: ElevatedButton(
                        onPressed: () {},
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.blueAccent,
                          fixedSize: const Size(378, 50),
                        ),
                        child: Align( alignment: Alignment.bottomCenter,
                          child: ElevatedButton( onPressed: ()
                          {
                            Navigator.push(context,MaterialPageRoute(builder: (context)=>const LoginScreen()),
                            );
                          },
                            style: ElevatedButton.styleFrom( backgroundColor:Colors.blue,
                              fixedSize: const Size(250, 48), ),
                            child: const
                            Text( "Update Password", style: TextStyle( fontSize: 20, color: Colors.white,
                            ),
                            ),
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    const Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Text(
                          "Already have an account?",
                          style: TextStyle(
                            color: Colors.blueGrey,
                            fontStyle: FontStyle.normal,
                            fontSize: 20,
                          ),
                        ),
                        Text(
                          "Login",
                          style: TextStyle(
                            color: Colors.blueAccent,
                            fontStyle: FontStyle.normal,
                            fontSize: 20,
                          ),
                        ),
                      ],
                    ),

                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
