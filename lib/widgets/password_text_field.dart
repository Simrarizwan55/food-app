import 'package:flutter/material.dart';
import 'package:food_app/widgets/app_text_field.dart';

class PasswordTextField extends StatefulWidget {
  const PasswordTextField({super.key,  this.hintText = "Password"});

  final String hintText;

  @override
  State<PasswordTextField> createState() => _PasswordTextFieldState();
}

class _PasswordTextFieldState extends State<PasswordTextField> {
  bool obscureText = true;

  @override
  Widget build(BuildContext context) {
    return  AppTextField(hintText: widget.hintText, obscureText: obscureText,);
    //suffixIcon: IconButton(
      //  icon: Icon(
        //obscureText ? Icons.visibility_off : Icons.visibility,

  }
}
