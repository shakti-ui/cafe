import 'package:cafe/constants.dart';
import 'package:cafe/screens/cart/cart_screen.dart';
import 'package:cafe/screens/home/components/search_field.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HomeHeader extends StatelessWidget {
  const HomeHeader({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          SearchField(),
          IconBtnWithCounter(
            icon: "assets/images/coffeecart.png",
            press: () {
              Navigator.pushNamed(context, CartScreen.routeName);
            },
          ),
          IconBtnWithCounter(
            icon: "assets/images/notification.png",
            numOfItems: 3,
            press: () {},
          ),
        ],
      ),
    );
  }
}

class IconBtnWithCounter extends StatelessWidget {
  final String icon;
  final int numOfItems;
  final GestureTapCallback press;
  const IconBtnWithCounter({
    Key? key,
    required this.icon,
    this.numOfItems = 0,
    required this.press,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: press,
      borderRadius: BorderRadius.circular(50),
      child: Stack(children: [
        Container(
          padding: EdgeInsets.all(12),
          height: 46,
          width: 46,
          decoration: BoxDecoration(
            color: textColor.withOpacity(0.1),
            shape: BoxShape.circle,
          ),
          child: Image.asset(icon),
        ),
        if (numOfItems != 0)
          Positioned(
            top: -3,
            right: 0,
            child: Container(
              height: 16,
              width: 16,
              decoration: BoxDecoration(
                color: Color(0xFFFF4848),
                shape: BoxShape.circle,
                border: Border.all(width: 1.5, color: Colors.white),
              ),
              child: Center(
                child: Text(
                  "${numOfItems}",
                  style: TextStyle(
                      fontSize: 10,
                      height: 1,
                      color: Colors.white,
                      fontWeight: FontWeight.w600),
                ),
              ),
            ),
          )
      ]),
    );
  }
}
