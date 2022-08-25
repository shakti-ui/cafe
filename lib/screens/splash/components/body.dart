// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:cafe/components/default_button.dart';
import 'package:cafe/screens/signin/signin_screen.dart';
import 'package:flutter/material.dart';

import 'package:cafe/constants.dart';
import 'package:cafe/screens/splash/components/splash_content.dart';
import 'package:cafe/size.config.dart';

class Body extends StatefulWidget {
  const Body({Key? key}) : super(key: key);

  @override
  State<Body> createState() => _BodyState();
}

class _BodyState extends State<Body> {
  int currentPage = 0;

  List<Map<String, String>> splashData = [
    {"text": "Welcome to cafe de parasio", "image": "assets/images/logo.png"},
    {"text": "Coffee With your friends", "image": "assets/images/splash1.png"},
    {
      "text": "Take Out ,Coffee of your Choice",
      "image": "assets/images/splash2.png"
    },
  ];
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: SizedBox(
        width: double.infinity,
        child: Column(
          children: [
            Expanded(
                flex: 3,
                child: PageView.builder(
                  onPageChanged: (value) {
                    setState(() {
                      currentPage = value;
                    });
                  },
                  itemCount: splashData.length,
                  itemBuilder: (context, index) => SplashContent(
                      text: splashData[index]['text']!,
                      image: splashData[index]['image']!),
                )),
            Expanded(
                flex: 2,
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 15),
                  child: Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: List.generate(splashData.length,
                            (index) => buildDot(index: index)),
                      ),
                      Spacer(flex: 2),
                      DefaultButton(
                          text: "Continue",
                          press: () {
                            Navigator.pushNamed(
                                context, SignInScreen.routeName);
                          }),
                      Spacer(
                        flex: 1,
                      ),
                    ],
                  ),
                )),
          ],
        ),
      ),
    );
  }

  AnimatedContainer buildDot({index}) {
    return AnimatedContainer(
      duration: animationDuration,
      margin: EdgeInsets.only(right: 5),
      height: 6,
      width: currentPage == index ? 20 : 6,
      decoration: BoxDecoration(
        color: currentPage == index ? primaryColor : secondaryColor,
        borderRadius: BorderRadius.circular(3),
      ),
    );
  }
}
