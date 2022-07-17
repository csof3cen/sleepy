import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:sleepy/presentation/homescreen/homescreen.dart';
import 'package:sleepy/presentation/selectsleepmusicscreen/selectsleepmusic.dart';
import 'package:sleepy/presentation/selecttimescreen/selecttimescreen.dart';
import 'package:sleepy/presentation/settingsscreen/settingsscreen.dart';
import 'package:sleepy/presentation/statsscreen/statsscreen.dart';
import 'consts.dart';

// Named Routes
const homeScreenRoute = '/';
const selectSleepMusicRoute = '/selectsleepmusic';
const selectTimeRoute = '/selecttime';
const statsRoute = '/stats';
const settingsRoute = '/settings';

const bottomNavigationBarItems = [HomeScreen(), StatsScreen(), SettingsScreen()];

Map<String, Widget Function(BuildContext)> appRoutes = {
  homeScreenRoute: (context) => const HomeScreen(),
  selectSleepMusicRoute: (context) => const SelectSleepMusicScreen(),
  selectTimeRoute: (context) => const SelectTimeScreen(),
  statsRoute: (context) => const StatsScreen(),
  settingsRoute: (context) => const SettingsScreen(),
};

ThemeData appTheme(BuildContext context) {
  return ThemeData(
    colorScheme: const ColorScheme.dark(),
    primarySwatch: Colors.indigo,
    textTheme: GoogleFonts.josefinSansTextTheme().apply(
      displayColor: Colors.white,
      bodyColor: Colors.white,
    ),
    elevatedButtonTheme: ElevatedButtonThemeData(
      style: TextButton.styleFrom(
        // primary: kBgColor,
        backgroundColor: kPrimaryColor,
        textStyle: const TextStyle(fontWeight: FontWeight.w600),
        padding: const EdgeInsets.symmetric(vertical: 9, horizontal: 13),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(
            kButtonBorderRadius,
          ),
        ),
      ),
    ),
    textButtonTheme: TextButtonThemeData(
      style: TextButton.styleFrom(
        backgroundColor: Colors.transparent,
        primary: kPrimaryColor,
        textStyle: const TextStyle(fontWeight: FontWeight.w600),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(
            kButtonBorderRadius,
          ),
        ),
      ),
    ),
    outlinedButtonTheme: OutlinedButtonThemeData(
      style: OutlinedButton.styleFrom(
        primary: kLightPrimaryColor,
        side: BorderSide(color: kPrimaryColor, width: 2),
      ),
    ),
  );
}
