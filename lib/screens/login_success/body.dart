import 'package:cafe/components/default_button.dart';
import 'package:cafe/constants.dart';
import 'package:cafe/screens/home/home_screen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class Body extends StatelessWidget {
  const Body({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height,
      child: Column(
        children: [
          Image.asset(
            "assets/images/success1.png",
            height: MediaQuery.of(context).size.height * 0.4,
          ),
          SizedBox(height: MediaQuery.of(context).size.height * 0.04),
          Text(
            "Login Success",
            style: TextStyle(
                fontSize: 30, fontWeight: FontWeight.bold, color: primaryColor),
          ),
          Spacer(),
          SizedBox(
              width: MediaQuery.of(context).size.width * 0.6,
              child: DefaultButton(
                  text: "Back to Home",
                  press: () {
                    Navigator.pushNamed(context, HomeScreen.routeName);
                  })),
          Spacer(),
        ],
      ),
    );
  }
}
