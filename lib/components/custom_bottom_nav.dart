import 'package:cafe/constants.dart';
import 'package:cafe/enums.dart';
import 'package:cafe/screens/home/home_screen.dart';
import 'package:cafe/screens/profile/profile_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class CustomButtomBar extends StatelessWidget {
  final Color inActiveIconColor = primaryColor;
  const CustomButtomBar({
    Key? key,
    required this.selectedMenu,
  }) : super(key: key);
  final MenuState selectedMenu;
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 14),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.only(
              topLeft: Radius.circular(40), topRight: Radius.circular(40)),
          color: Colors.white,
          boxShadow: [
            BoxShadow(
                offset: Offset(0, -15),
                blurRadius: 20,
                color: primaryColor.withOpacity(0.15)),
          ]),
      child: SafeArea(
          child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          IconButton(
              onPressed: () =>
                  Navigator.pushNamed(context, HomeScreen.routeName),
              icon: SvgPicture.asset(
                "assets/icons/store.svg",
                color: MenuState.home == selectedMenu
                    ? textColor
                    : inActiveIconColor,
              )),
          IconButton(
              onPressed: () {},
              icon: SvgPicture.asset(
                "assets/icons/heart.svg",
                color: MenuState.favourite == selectedMenu
                    ? textColor
                    : inActiveIconColor,
              )),
          IconButton(
              onPressed: () {},
              icon: SvgPicture.asset(
                "assets/icons/message.svg",
                color: MenuState.message == selectedMenu
                    ? textColor
                    : inActiveIconColor,
              )),
          IconButton(
              onPressed: () {
                Navigator.pushNamed(context, ProfileScreen.routeName);
              },
              icon: SvgPicture.asset(
                "assets/icons/person.svg",
                color: MenuState.profile == selectedMenu
                    ? textColor
                    : inActiveIconColor,
              )),
        ],
      )),
    );
  }
}
