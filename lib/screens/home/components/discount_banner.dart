import 'package:cafe/constants.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class DiscountBanner extends StatelessWidget {
  const DiscountBanner({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 20),
      padding: EdgeInsets.symmetric(horizontal: 20, vertical: 15),
      width: double.infinity,
      // height: 90,
      decoration: BoxDecoration(
        color: textColor,
        borderRadius: BorderRadius.circular(20),
      ),
      child: Text.rich(TextSpan(
          text: "App Download Surprise\n",
          style: TextStyle(color: Colors.white),
          children: [
            TextSpan(
                text: "Discount 20%",
                style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold))
          ])),
    );
  }
}
