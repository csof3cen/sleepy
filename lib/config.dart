import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:sleepy/presentation/homescreen/homescreen.dart';
import 'package:sleepy/presentation/selectsleepmusicscreen/selectsleepmusic.dart';
import 'package:sleepy/presentation/selecttimescreen/selecttimescreen.dart';
import 'consts.dart';

// Named Routes
const homeScreenRoute = '/';
const selectSleepMusicRoute = '/selectsleepmusic';
const selectTimeRoute = '/selecttime';

Map<String, Widget Function(BuildContext)> appRoutes = {
  homeScreenRoute: (context) => const HomeScreen(),
  selectSleepMusicRoute: (context) => const SelectSleepMusicScreen(),
  selectTimeRoute: (context) => const SelectTimeScreen(),
};

ThemeData appTheme(BuildContext context) {
  return ThemeData(
    colorScheme: const ColorScheme.dark(),
    primarySwatch: Colors.blue,
    textTheme: GoogleFonts.josefinSansTextTheme().apply(
      displayColor: Colors.white,
      bodyColor: Colors.white,
    ),
    elevatedButtonTheme: ElevatedButtonThemeData(
        style: TextButton.styleFrom(
      primary: kBgColor,
      backgroundColor: kFgColor,
      textStyle: Theme.of(context)
          .textTheme
          .headline6
          ?.copyWith(fontFamily: GoogleFonts.josefinSans().fontFamily),
      // padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 15),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
    )),
  );
}
