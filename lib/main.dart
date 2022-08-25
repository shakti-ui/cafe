import 'package:cafe/constants.dart';
import 'package:cafe/routes.dart';
import 'package:cafe/screens/login_success/login_success_screen.dart';
import 'package:cafe/screens/signin/signin_screen.dart';
import 'package:cafe/screens/splash/splashScreen.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(
    statusBarColor: Colors.transparent,
  ));
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
          scaffoldBackgroundColor: secondaryColor,
          textTheme: TextTheme(
            bodyText1: GoogleFonts.lato(color: textColor),
            bodyText2: GoogleFonts.raleway(color: textColor),
          ),
          visualDensity: VisualDensity.adaptivePlatformDensity),
      // home: const SplashScreen(),
      initialRoute: SplashScreen.routeName,
      routes: routes,
    );
  }
}
