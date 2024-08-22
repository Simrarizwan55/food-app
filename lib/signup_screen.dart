import "package:flutter/material.dart";
import "package:food_app/login_screen.dart";
import "package:food_app/widgets/app_text_field.dart";
import "package:food_app/widgets/password_text_field.dart";

class SignupScreen extends StatefulWidget {
  const SignupScreen({super.key});

  @override
  State<SignupScreen> createState() => _SignupScreenState();
}

class _SignupScreenState extends State<SignupScreen> {
  bool isRememberMeSelected = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        leading: IconButton(
          onPressed: () {
            Navigator.push(context,MaterialPageRoute(builder: (context)=>const LoginScreen()),
            );
          },
          icon: const Icon(Icons.arrow_back_ios_new),
        ),
      ),
      body: Stack(
        children: [
          Image.asset(
            "assets/images/launch_login.png",
            fit: BoxFit.cover,
            width: double.infinity,
          ),
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
                    const SizedBox(height: 10),
                    const Text(
                      "SignUp",
                      style: TextStyle(
                        color: Colors.black,
                        fontStyle: FontStyle.normal,
                        fontSize: 30,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    const SizedBox(height: 10),
                    const Text(
                      "Create an Account, It's free.",
                      style: TextStyle(
                        color: Colors.black,
                        fontStyle: FontStyle.normal,
                        fontSize: 20,
                        fontWeight: FontWeight.normal,
                      ),
                    ),
                    const SizedBox(height: 20),
                    const AppTextField(
                      hintText: "First Name",
                      obscureText: false,
                    ),
                    const SizedBox(height: 20),
                    const AppTextField(
                      hintText: "Last Name",
                      obscureText: false,
                    ),
                    const SizedBox(height: 20),
                    const AppTextField(
                      hintText: "Email",
                      obscureText: false,
                    ),
                    const SizedBox(height: 20),
                    const PasswordTextField(),
                    const SizedBox(height: 05),
                    Row(
                      children: [
                        Checkbox(
                          value: isRememberMeSelected,
                          onChanged: (bool? value) {
                            setState(() {
                              isRememberMeSelected = !isRememberMeSelected;
                            });
                          },
                        ),
                        const Text(
                          "I agree Terms and conditions",
                          style: TextStyle(
                            color: Colors.blueGrey,
                            fontSize: 16,
                          ),
                        ),
                        const SizedBox(width: 8),
                      ],
                    ),
                    const SizedBox(height: 10),
                    Align(
                      alignment: Alignment.center,
                      child: ElevatedButton(
                        onPressed: () {},
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.blueAccent,
                          fixedSize: const Size(378, 50),
                        ),
                        child: const Text(
                          "Sign Up",
                          textDirection: TextDirection.ltr,
                          style: TextStyle(
                            color: Colors.white,
                            fontStyle: FontStyle.normal,
                            fontSize: 20,
                          ),
                        ),
                      ),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        const Text(
                          "Already have an account?",
                          style: TextStyle(
                            color: Colors.blueGrey,
                            fontStyle: FontStyle.normal,
                            fontSize: 20,
                          ),
                        ),
                        const SizedBox(width: 5),
                        GestureDetector(
                          onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) =>
                                const LoginScreen(),
                              ),
                            );
                          },
                          child: const Text(
                            "Login",
                            style: TextStyle(
                              color: Colors.blueAccent,
                              fontStyle: FontStyle.normal,
                              fontSize: 20,
                            ),
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(height: 20),
                    const Align(
                      alignment: Alignment.center,
                      child: Text(
                        "Or Continue with",
                        style: TextStyle(
                          color: Colors.blueAccent,
                          fontStyle: FontStyle.normal,
                          fontSize: 20,
                        ),
                      ),
                    ),
                    const SizedBox(height: 10),
                    Align(
                      alignment: Alignment.center,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Image.asset(
                            "assets/images/google_icon.png",
                            width: 200,
                            height: 70,
                          ),
                          const SizedBox(width: 2),
                          Image.asset(
                            "assets/images/facebook_icon.png",
                            width: 100,
                            height: 50,
                          ),
                        ],
                      ),
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
