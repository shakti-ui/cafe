import 'package:cafe/models/Items.dart';
import 'package:flutter/material.dart';

class ItemImage extends StatelessWidget {
  const ItemImage({
    Key? key,
    required this.items,
  }) : super(key: key);

  final Items items;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          width: double.infinity,
          child: AspectRatio(
            aspectRatio: 1,
            child: Image.asset(items.images[0]),
          ),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              padding: EdgeInsets.only(left: 15),
              height: 40,
              width: 200,
              decoration: BoxDecoration(
                shape: BoxShape.rectangle,
                color: Colors.white,
                borderRadius: BorderRadius.circular(10),
              ),
              child: Row(
                children: [
                  TextButton(onPressed: () {}, child: Text(items.type[0])),
                  SizedBox(width: 20),
                  TextButton(onPressed: () {}, child: Text(items.title)),
                ],
              ),
            ),
          ],
        )
      ],
    );
  }
}
