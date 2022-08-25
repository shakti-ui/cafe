import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Rating extends StatelessWidget {
  final double rating;
  const Rating({
    Key? key,
    required this.rating,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Container(
              padding: EdgeInsets.symmetric(horizontal: 14, vertical: 5),
              // decoration: BoxDecoration(
              //     color: Colors.blue[400], shape: BoxShape.circle),
              child: Row(
                children: [
                  Text(
                    rating.toString(),
                    style: TextStyle(
                        fontWeight: FontWeight.w600, letterSpacing: 1),
                  ),
                  SizedBox(width: 2),
                  Icon(Icons.star)
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
