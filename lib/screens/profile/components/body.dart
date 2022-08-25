// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:cafe/screens/profile/components/profile_menu.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import 'package:cafe/screens/profile/components/profile_pic.dart';

class Body extends StatelessWidget {
  const Body({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ProfilePic(),
        SizedBox(height: 20),
        ProfileMenu(
            icon: "assets/icons/person.svg", press: () {}, text: "My Account"),
        ProfileMenu(
            icon: "assets/icons/notification-bell-13113.svg",
            press: () {},
            text: "Notifications"),
        ProfileMenu(
            icon: "assets/icons/person.svg", press: () {}, text: "Setting"),
        ProfileMenu(
            icon: "assets/icons/person.svg", press: () {}, text: "Help Center"),
        ProfileMenu(
            icon: "assets/icons/person.svg", press: () {}, text: "Log Out"),
      ],
    );
  }
}
