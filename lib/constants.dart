import 'package:flutter/material.dart';

const primaryColor = Color(0xffbc9132);
const primaryLightColor = Color(0xffb08534);
const primaryGradiantColor = LinearGradient(
    begin: Alignment.topLeft,
    end: Alignment.bottomLeft,
    colors: [Color(0xff322b29), Color(0xffffffff)]);
const secondaryColor = Color.fromARGB(255, 244, 238, 234);
const textColor = Color(0xff1eaac1);
const animationDuration = Duration(milliseconds: 200);

final headingStyle = TextStyle(
    color: Colors.black,
    fontSize: 28,
    fontWeight: FontWeight.bold,
    height: 1.5);

//
final RegExp emailValidateRegExp = RegExp(
    r"^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+");
const String emailNullError = "Please enter your email";
const String invalidEmailError = "Please enter valid email";
const String passwordNullError = "Please enter your password";
const String shortPassError = "Password is too short";
const String matchPassError = "Passwords don`t match";

const String nameNullError = "Please enter your first name";
const String phoneNullError = "Please enter phone number";
const String addressNullError = "Please enter your address";

final otpInputDacoration = InputDecoration(
    contentPadding: EdgeInsets.symmetric(vertical: 15),
    enabledBorder: OutlineBorder(),
    focusedBorder: OutlineBorder(),
    border: OutlineBorder());

OutlineInputBorder OutlineBorder() {
  return OutlineInputBorder(
    borderRadius: BorderRadius.circular(15),
    borderSide: BorderSide(color: textColor),
  );
}
