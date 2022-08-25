import 'package:cafe/screens/cart/cart_screen.dart';
import 'package:cafe/screens/complete_profile/complete_profile_screen.dart';
import 'package:cafe/screens/details/details_screen.dart';
import 'package:cafe/screens/forgot_password/forgot_password_screen.dart';
import 'package:cafe/screens/home/home_screen.dart';
import 'package:cafe/screens/login_success/login_success_screen.dart';
import 'package:cafe/screens/otp/otp_screen.dart';
import 'package:cafe/screens/profile/profile_screen.dart';
import 'package:cafe/screens/sign_up/signup_screen.dart';
import 'package:cafe/screens/signin/signin_screen.dart';
import 'package:cafe/screens/splash/splashScreen.dart';
import 'package:flutter/material.dart';

final Map<String, WidgetBuilder> routes = {
  SplashScreen.routeName: (context) => SplashScreen(),
  SignInScreen.routeName: (context) => SignInScreen(),
  ForgotPasswordScreen.routeName: (context) => ForgotPasswordScreen(),
  LoginSuccessSCreen.routeName: (context) => LoginSuccessSCreen(),
  SignUpScreen.routeName: (context) => SignUpScreen(),
  CompleteProfileScreen.routeName: (context) => CompleteProfileScreen(),
  OTPScreen.routeName: (context) => OTPScreen(),
  HomeScreen.routeName: (context) => HomeScreen(),
  DetailsScreen.routeName: (context) => DetailsScreen(),
  CartScreen.routeName: (context) => CartScreen(),
  ProfileScreen.routeName: (context) => ProfileScreen(),
};
