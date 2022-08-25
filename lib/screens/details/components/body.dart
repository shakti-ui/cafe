import 'package:cafe/components/default_button.dart';
import 'package:cafe/components/icon_btn.dart';
import 'package:cafe/constants.dart';
import 'package:cafe/models/Items.dart';
import 'package:cafe/screens/details/components/item_description.dart';
import 'package:cafe/screens/details/components/item_image.dart';
import 'package:cafe/screens/details/components/top_container.dart';
import 'package:cafe/screens/splash/components/splash_content.dart';
import 'package:flutter/material.dart';

class Body extends StatelessWidget {
  final Items items;

  const Body({Key? key, required this.items}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        ItemImage(items: items),
        TopContainer(
          color: Colors.white,
          child: Column(
            children: [
              ItemsDescription(
                items: items,
                pressOnMore: () {},
              ),
              Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      ElevatedButton(
                          onPressed: () {}, child: Icon(Icons.remove)),
                      ElevatedButton(onPressed: () {}, child: Icon(Icons.add)),
                    ],
                  ),
                  Padding(
                    padding: EdgeInsets.only(
                      left: MediaQuery.of(context).size.width * 0.15,
                      right: MediaQuery.of(context).size.width * 0.15,
                      bottom: 40,
                      top: 15,
                    ),
                    child: DefaultButton(
                      text: "Add To Cart",
                      press: () {},
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ],
    );
  }
}
