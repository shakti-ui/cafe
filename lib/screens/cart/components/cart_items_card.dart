import 'package:cafe/constants.dart';
import 'package:cafe/models/cart.dart';
import 'package:flutter/material.dart';

class CartItemCard extends StatelessWidget {
  const CartItemCard({
    Key? key,
    required this.cart,
  }) : super(key: key);
  final Cart cart;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        SizedBox(
          width: 88,
          child: AspectRatio(
            aspectRatio: 0.88,
            child: Container(
              decoration: BoxDecoration(
                color: Color(0xfff5f6f9),
                borderRadius: BorderRadius.circular(15),
              ),
              child: Image.asset(cart.items.images[0]),
            ),
          ),
        ),
        SizedBox(width: 20),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              cart.items.title,
              style: TextStyle(color: Colors.black54, fontSize: 16),
              maxLines: 2,
            ),
            SizedBox(height: 10),
            Text.rich(
              TextSpan(
                  text: "\nRs.${cart.items.price}",
                  style: TextStyle(color: primaryColor),
                  children: [
                    TextSpan(
                        text: "x${cart.numOfItems}",
                        style: TextStyle(color: Colors.black)),
                  ]),
            )
          ],
        )
      ],
    );
  }
}
