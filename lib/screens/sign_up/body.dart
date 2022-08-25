import 'package:cafe/components/default_button.dart';
import 'package:cafe/components/error_form.dart';
import 'package:cafe/components/social_card.dart';
import 'package:cafe/constants.dart';
import 'package:cafe/screens/sign_up/signup_form.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Body extends StatelessWidget {
  const Body({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(height: MediaQuery.of(context).size.height * 0.02),
              Text("Register Account", style: headingStyle),
              Text(
                "Complete your details or continue \nwith social media",
                textAlign: TextAlign.center,
              ),
              SizedBox(height: MediaQuery.of(context).size.height * 0.07),
              SignUpForm(),
              SizedBox(height: MediaQuery.of(context).size.height * 0.07),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SocialCard(icon: "assets/icons/google.svg", press: () {}),
                  SocialCard(icon: "assets/icons/facebook.svg", press: () {}),
                  SocialCard(icon: "assets/icons/twitter-96.svg", press: () {}),
                ],
              ),
              SizedBox(height: 20 / 820 * MediaQuery.of(context).size.height),
              Text(
                "By continuing your confirm that you agree \nwith our Term and Condition",
                textAlign: TextAlign.center,
              )
            ],
          ),
        ),
      ),
    );
  }
}
