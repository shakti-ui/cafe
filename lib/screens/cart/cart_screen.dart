import 'package:cafe/components/default_button.dart';
import 'package:cafe/constants.dart';
import 'package:cafe/screens/cart/components/body.dart';
import 'package:flutter/material.dart';
import '../../models/cart.dart';

class CartScreen extends StatelessWidget {
  static String routeName = "/cart";
  const CartScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: primaryColor,
        centerTitle: true,
        title: Column(
          children: [
            Text(
              "Cart Items",
              style: TextStyle(color: Colors.black45),
            ),
            Text(
              "${demoCarts.length} items",
              style: Theme.of(context).textTheme.caption,
            ),
          ],
        ),
      ),
      body: Body(),
      bottomNavigationBar: CheckoutCard(),
    );
  }
}

class CheckoutCard extends StatelessWidget {
  const CheckoutCard({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 15, horizontal: 30),
      // height: 174,
      decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(30),
            topRight: Radius.circular(30),
          ),
          boxShadow: [
            BoxShadow(
                offset: Offset(0, -15),
                blurRadius: 20,
                color: primaryLightColor.withOpacity(0.15))
          ]),
      child: SafeArea(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Row(
              children: [
                Container(
                  height: 40,
                  width: 40,
                  decoration: BoxDecoration(
                    color: Color(0xfff5f6f9),
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Image.asset("assets/images/bill.png"),
                ),
                Spacer(),
                Text("Add Voucher Code"),
                SizedBox(width: 10),
                Icon(
                  Icons.forward,
                  size: 12,
                  color: textColor,
                ),
              ],
            ),
            SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text.rich(
                  TextSpan(text: "Total:\n", children: [
                    TextSpan(
                      text: "\nRs.400",
                      style: TextStyle(fontSize: 16, color: Colors.black),
                    ),
                  ]),
                ),
                SizedBox(
                  width: 190,
                  child: DefaultButton(text: "Check Out", press: () {}),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
