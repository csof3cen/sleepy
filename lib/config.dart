import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:sleepy/presentation/homescreen/homescreen.dart';

import 'consts.dart';

// Named Routes
const homeScreenRoute = '/';

Map<String, Widget Function(BuildContext)> appRoutes = {
  homeScreenRoute: (context) => const HomeScreen(),
};

ThemeData appTheme(BuildContext context) {
  return ThemeData(
    colorScheme: const ColorScheme.dark(),
    primarySwatch: Colors.blue,
    textTheme: GoogleFonts.josefinSansTextTheme().apply(
      displayColor: Colors.white,
      bodyColor: Colors.white,
    ),
    textButtonTheme: TextButtonThemeData(
        style: TextButton.styleFrom(
      primary: kBgColor,
      backgroundColor: kFgColor,
      textStyle: Theme.of(context).textTheme.headline6?.copyWith(fontFamily: GoogleFonts.josefinSans().fontFamily),
      padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 17),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(30)),
    )),
  );
}
