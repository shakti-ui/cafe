// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/Material.dart';

import 'package:cafe/constants.dart';
import 'package:cafe/models/Items.dart';

class ItemsCard extends StatelessWidget {
  const ItemsCard({
    Key? key,
    this.aspectRatio = 1.02,
    required this.items,
    required this.press,
    this.width = 140,
  }) : super(key: key);
  final double width, aspectRatio;
  final Items items;
  final GestureTapCallback press;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: GestureDetector(
        onTap: press,
        child: SizedBox(
          width: width,
          child: Column(
            children: [
              AspectRatio(
                aspectRatio: aspectRatio,
                child: Container(
                  padding: EdgeInsets.all(20),
                  decoration: BoxDecoration(
                    color: primaryLightColor.withOpacity(0.1),
                    borderRadius: BorderRadius.circular(15),
                  ),
                  child: Image.asset(items.images[0]),
                ),
              ),
              SizedBox(height: 5),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    items.title,
                    style: TextStyle(color: Colors.black, fontSize: 15),
                    maxLines: 2,
                  ),
                  Container(
                    padding: EdgeInsets.all(5),
                    color: items.type == 'Iced' ? Colors.blue : Colors.red,
                    child: Text(
                      items.type[0],
                      style: TextStyle(
                        fontSize: 15,
                        fontWeight: FontWeight.w600,
                        color: Colors.white,
                      ),
                    ),
                    constraints: BoxConstraints(
                      minHeight: 28,
                      minWidth: 50,
                      maxHeight: 28,
                      maxWidth: 50,
                    ),
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text("Rs${items.price}",
                      style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.w600,
                          color: primaryLightColor)),
                  InkWell(
                    onTap: () {},
                    borderRadius: BorderRadius.circular(30),
                    child: Container(
                      padding: EdgeInsets.all(5),
                      width: 28,
                      height: 28,
                      decoration: BoxDecoration(
                          color: items.isFavourite
                              ? textColor.withOpacity(0.15)
                              : primaryLightColor.withOpacity(0.1),
                          shape: BoxShape.circle),
                      child: Image.asset(
                        "assets/images/heart.png",
                        color: items.isFavourite
                            ? Color(0xffff4848)
                            : Color(0xffdbdee4),
                      ),
                    ),
                  )
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
