// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:cafe/components/custom_bottom_nav.dart';
import 'package:cafe/screens/home/home_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import 'package:cafe/constants.dart';
import 'package:cafe/enums.dart';
import 'package:cafe/screens/profile/components/body.dart';

class ProfileScreen extends StatelessWidget {
  static String routeName = "/profile";
  const ProfileScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: primaryColor,
        title: Text("Profile"),
        centerTitle: true,
      ),
      body: Body(),
      bottomNavigationBar: CustomButtomBar(selectedMenu: MenuState.home),
    );
  }
}
