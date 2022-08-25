import 'package:cafe/constants.dart';
import 'package:flutter/cupertino.dart';

class SplashContent extends StatelessWidget {
  final String text;
  final String image;
  const SplashContent({
    Key? key,
    required this.text,
    required this.image,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Spacer(),
        Text(
          "Cafe de Parasio",
          style: TextStyle(
              fontSize: 36, color: primaryColor, fontWeight: FontWeight.bold),
        ),
        Text(text, textAlign: TextAlign.center),
        Spacer(
          flex: 2,
        ),
        Image.asset(
          image,
          height: 265,
          width: 235,
        )
      ],
    );
  }
}
