import 'package:cafe/constants.dart';
import 'package:cafe/screens/signin//body.dart';
import 'package:flutter/material.dart';

class SignInScreen extends StatelessWidget {
  static String routeName = "/sign-in";
  const SignInScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: primaryLightColor,
        title: Text(
          "Sign In",
          style: TextStyle(color: Colors.white),
        ),
        centerTitle: true,
      ),
      body: Body(),
    );
  }
}
