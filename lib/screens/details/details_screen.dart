// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:cafe/screens/details/components/body.dart';
import 'package:cafe/screens/details/components/rating.dart';
import 'package:flutter/material.dart';

import 'package:cafe/components/icon_btn.dart';
import 'package:cafe/constants.dart';
import 'package:cafe/models/Items.dart';

class DetailsScreen extends StatelessWidget {
  static String routeName = "/detail";
  const DetailsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final ItemDetailsArguments arguments =
        ModalRoute.of(context)!.settings.arguments as ItemDetailsArguments;
    return Scaffold(
      appBar: AppBar(
          backgroundColor: primaryColor,
          automaticallyImplyLeading: false,
          leadingWidth: 100,
          toolbarHeight: 40,
          leading: IconBtn(
              iconData: Icons.arrow_back, press: () => Navigator.pop(context)),
          actions: [Rating(rating: arguments.items.rating)]),
      body: Body(items: arguments.items),
    );
  }
}

class ItemDetailsArguments {
  final Items items;

  ItemDetailsArguments({required this.items});
}
