import 'package:cafe/constants.dart';
import 'package:cafe/screens/login_success/body.dart';
import 'package:flutter/material.dart';

class LoginSuccessSCreen extends StatelessWidget {
  static String routeName = "/login-success";
  const LoginSuccessSCreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: primaryLightColor,
        leading: SizedBox(),
        title: Text("Login Success"),
        centerTitle: true,
      ),
      body: Body(),
    );
  }
}
