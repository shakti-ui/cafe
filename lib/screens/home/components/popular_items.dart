import 'package:cafe/models/Items.dart';
import 'package:cafe/screens/details/details_screen.dart';
import 'package:cafe/screens/home/components/items_card.dart';
import 'package:cafe/screens/home/components/section_title.dart';
import 'package:flutter/material.dart';

class PopularItems extends StatelessWidget {
  const PopularItems({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SectionTitle(text: "Popular Items", press: () {}),
        SizedBox(height: 20),
        SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
            children: [
              ...List.generate(demoItems.length, (index) {
                if (demoItems[index].isPopular)
                  return ItemsCard(
                    items: demoItems[index],
                    press: () =>
                        Navigator.pushNamed(context, DetailsScreen.routeName,arguments: ItemDetailsArguments(items: demoItems[index])),
                  );
                return SizedBox.shrink();
              }),
              SizedBox(width: 20),
            ],
          ),
        ),
      ],
    );
  }
}
