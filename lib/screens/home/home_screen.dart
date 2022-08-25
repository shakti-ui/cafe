import 'package:cafe/components/custom_bottom_nav.dart';
import 'package:cafe/enums.dart';
import 'package:cafe/screens/home/components/body.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class HomeScreen extends StatelessWidget {
  static String routeName = "/home";
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Body(),
      bottomNavigationBar: CustomButtomBar(selectedMenu: MenuState.home),
    );
  }
}
