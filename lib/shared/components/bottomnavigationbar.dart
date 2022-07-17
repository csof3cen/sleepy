import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:sleepy/consts.dart';
import 'package:sleepy/config.dart';

class CustomBottomNavigationBar extends StatefulWidget {
  int index;

  CustomBottomNavigationBar(this.index, {Key? key}) : super(key: key);

  @override
  State<CustomBottomNavigationBar> createState() => _CustomBottomNavigationBarState(this.index);
}

class _CustomBottomNavigationBarState extends State<CustomBottomNavigationBar> {
  _CustomBottomNavigationBarState(this.index);
  int index;

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      backgroundColor: kCardColor,
      currentIndex: index,
      selectedItemColor: kPrimaryColor,
      elevation: 10,
      onTap: (int i) {
        setState(() {
          index = i;
          Navigator.pushReplacement(
            context,
            PageRouteBuilder(
              pageBuilder: (context, animation, secondaryAnimation) => bottomNavigationBarItems[i],
              transitionDuration: Duration.zero,
              reverseTransitionDuration: Duration.zero,
            ),
          );
        });
      },
      items: const [
        BottomNavigationBarItem(
          label: 'Mission',
          icon: Icon(CupertinoIcons.home),
        ),
        BottomNavigationBarItem(
          label: 'Statistiques',
          icon: Icon(CupertinoIcons.chart_bar_fill),
        ),
        BottomNavigationBarItem(
          label: 'Paramètres',
          icon: Icon(CupertinoIcons.settings),
        ),
      ],
    );
  }
}
