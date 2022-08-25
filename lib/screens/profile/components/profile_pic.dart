import 'package:cafe/constants.dart';
import 'package:flutter/material.dart';

class ProfilePic extends StatelessWidget {
  const ProfilePic({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 115,
      width: 115,
      child: Stack(fit: StackFit.expand, children: [
        CircleAvatar(
          backgroundColor: textColor,
          radius: 60,
          backgroundImage: AssetImage("assets/images/logo.png"),
        ),
        Positioned(
          bottom: 0,
          right: -10,
          child: SizedBox(
            height: 40,
            width: 40,
            child: TextButton(
                onPressed: () {},
                child: Icon(
                  Icons.camera_alt_rounded,
                  size: 25,
                )),
          ),
        )
      ]),
    );
  }
}
