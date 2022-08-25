import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class SectionTitle extends StatelessWidget {
  final String text;
  final GestureTapCallback press;
  const SectionTitle({
    Key? key,
    required this.text,
    required this.press,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            text,
            style: TextStyle(fontSize: 18, color: Colors.black),
          ),
          GestureDetector(onTap: press, child: Text("See more"))
        ],
      ),
    );
  }
}
