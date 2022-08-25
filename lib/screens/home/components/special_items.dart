import 'package:cafe/screens/home/components/section_title.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class SpecialItems extends StatelessWidget {
  const SpecialItems({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SectionTitle(text: "Today`s Special", press: () {}),
        SizedBox(height: 20),
        SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
            children: [
              SpecialCard(
                image: "assets/images/iced.png",
                numOfItems: 5,
                category: "Iced Beverage",
                press: () {},
              ),
              SpecialCard(
                image: "assets/images/tea.png",
                numOfItems: 5,
                category: "Iced Beverage",
                press: () {},
              ),
              SizedBox(width: 20),
            ],
          ),
        ),
      ],
    );
  }
}

class SpecialCard extends StatelessWidget {
  const SpecialCard(
      {Key? key,
      required this.press,
      required this.image,
      required this.numOfItems,
      required this.category})
      : super(key: key);
  final String category, image;
  final int numOfItems;
  final GestureTapCallback press;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 8.0),
      child: SizedBox(
        width: 242,
        height: 100,
        child: ClipRRect(
          borderRadius: BorderRadius.circular(20),
          child: Stack(
            alignment: Alignment.center,
            children: [
              Image.asset(
                image,
                fit: BoxFit.cover,
              ),
              Container(
                decoration: BoxDecoration(
                    gradient: LinearGradient(
                        begin: Alignment.topCenter,
                        end: Alignment.bottomCenter,
                        colors: [
                      Color(0xff343434).withOpacity(0.4),
                      Color(0xff343434).withOpacity(0.15),
                    ])),
              ),
              Positioned(
                bottom: 1,
                child: Text.rich(
                  TextSpan(style: TextStyle(color: Colors.white), children: [
                    TextSpan(
                      text: "$category\n",
                      style:
                          TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                    ),
                    TextSpan(text: "$numOfItems Items"),
                  ]),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
