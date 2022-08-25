import 'package:cafe/constants.dart';
import 'package:cafe/models/Items.dart';
import 'package:flutter/material.dart';

class ItemsDescription extends StatelessWidget {
  const ItemsDescription({
    Key? key,
    required this.items,
    required this.pressOnMore,
  }) : super(key: key);

  final Items items;
  final GestureTapCallback pressOnMore;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 20),
          child: Text(
            items.title,
            style: Theme.of(context).textTheme.headline6,
          ),
        ),
        SizedBox(height: 5),
        Align(
          alignment: Alignment.centerRight,
          child: Container(
            padding: EdgeInsets.all(15),
            width: 50,
            decoration: BoxDecoration(
                color:
                    items.isFavourite ? Color(0xffffe6e6) : Color(0xfff5f6f9),
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(40),
                  bottomLeft: Radius.circular(40),
                )),
            child: Image.asset("assets/images/heart.png",
                color:
                    items.isFavourite ? Color(0xffff4848) : Color(0xffdbdee4)),
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(left: 20, right: 64),
          child: Text(
            items.description,
            maxLines: 3,
          ),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
          child: GestureDetector(
            onTap: pressOnMore,
            child: Row(
              children: [
                Text(
                  "See more detail",
                  style: TextStyle(
                      color: primaryColor, fontWeight: FontWeight.bold),
                ),
                SizedBox(width: 5),
                Icon(
                  Icons.forward,
                  size: 12,
                  color: primaryColor,
                )
              ],
            ),
          ),
        )
      ],
    );
  }
}
