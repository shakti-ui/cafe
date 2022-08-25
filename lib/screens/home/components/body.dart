// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:ui';

import 'package:cafe/models/Items.dart';
import 'package:cafe/screens/home/components/items_card.dart';
import 'package:cafe/screens/home/components/popular_items.dart';
import 'package:cafe/screens/home/components/special_items.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_svg/flutter_svg.dart';

import 'package:cafe/constants.dart';
import 'package:cafe/screens/home/components/categories.dart';
import 'package:cafe/screens/home/components/discount_banner.dart';
import 'package:cafe/screens/home/components/home_header.dart';
import 'package:cafe/screens/home/components/search_field.dart';
import 'package:cafe/screens/home/components/section_title.dart';

class Body extends StatelessWidget {
  const Body({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: SingleChildScrollView(
      child: Column(
        children: [
          SizedBox(height: 20),
          HomeHeader(),
          SizedBox(height: 30),
          DiscountBanner(),
          SizedBox(height: 30),
          Categories(),
          SizedBox(height: 30),
          SpecialItems(),
          SizedBox(height: 30),
          PopularItems(),
          SizedBox(height: 30),
        ],
      ),
    ));
  }
}
