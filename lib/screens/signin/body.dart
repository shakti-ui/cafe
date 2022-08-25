import 'package:cafe/components/default_button.dart';
import 'package:cafe/components/no_account.dart';
import 'package:cafe/components/social_card.dart';
import 'package:cafe/constants.dart';
import 'package:cafe/screens/forgot_password/forgot_password_screen.dart';
import 'package:cafe/screens/signin/signin_form.dart';
import 'package:cafe/size.config.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class Body extends StatelessWidget {
  const Body({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: SizedBox(
        width: double.infinity,
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: SingleChildScrollView(
            child: Column(
              children: [
                SizedBox(
                  height: MediaQuery.of(context).size.height * 0.04,
                ),
                Text(
                  'Welcome Back',
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: 28,
                      fontWeight: FontWeight.bold),
                ),
                Text(
                  'Sign in with your email and password or continue with social media',
                  textAlign: TextAlign.center,
                ),
                SizedBox(height: MediaQuery.of(context).size.height * 0.08),
                SignInForm(),
                SizedBox(height: MediaQuery.of(context).size.height * 0.08),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    SocialCard(icon: "assets/icons/google.svg", press: () {}),
                    SocialCard(icon: "assets/icons/facebook.svg", press: () {}),
                    SocialCard(
                        icon: "assets/icons/twitter-96.svg", press: () {}),
                  ],
                ),
                SizedBox(height: MediaQuery.of(context).size.height / 20),
                NoAccount(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
