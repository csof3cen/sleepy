import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:sleepy/consts.dart';

class CustomBottomNavigationBar extends StatefulWidget {
  const CustomBottomNavigationBar({Key? key}) : super(key: key);

  @override
  State<CustomBottomNavigationBar> createState() =>
      _CustomBottomNavigationBarState();
}

class _CustomBottomNavigationBarState extends State<CustomBottomNavigationBar> {
  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      backgroundColor: kBgColor,
      elevation: 10,
      items: const [
        BottomNavigationBarItem(
          label: 'Mission',
          icon: Icon(CupertinoIcons.home),
        ),
        BottomNavigationBarItem(
          label: 'Résultats',
          icon: Icon(CupertinoIcons.chart_bar_fill),
        ),
        BottomNavigationBarItem(
          label: 'Paramètres',
          icon: Icon(CupertinoIcons.settings),
        )
      ],
    );
  }
}
