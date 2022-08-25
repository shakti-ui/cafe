// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

import 'package:cafe/constants.dart';
import 'package:flutter_svg/flutter_svg.dart';

class SocialCard extends StatelessWidget {
  final String icon;
  final VoidCallback press;
  const SocialCard({
    Key? key,
    required this.icon,
    required this.press,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: press,
      child: Container(
        margin: EdgeInsets.symmetric(
            horizontal: 10 / 375 * MediaQuery.of(context).size.width),
        padding: EdgeInsets.all(
          12 / 375 * MediaQuery.of(context).size.width,
        ),
        // height: 40 / 812 * MediaQuery.of(context).size.height,
        // width: 40 / 375 * MediaQuery.of(context).size.width,
        decoration:
            BoxDecoration(color: Color(0xfff5f6f9), shape: BoxShape.circle),
        child: SvgPicture.asset(
          icon,
        ),
      ),
    );
  }
}
