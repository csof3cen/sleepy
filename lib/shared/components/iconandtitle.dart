import 'package:flutter/material.dart';
import 'package:sleepy/consts.dart';
import 'package:sleepy/shared/components/roundediconwithbackground.dart';

class IconAndTitle extends StatelessWidget {
  const IconAndTitle({
    Key? key,
    required this.icon,
    required this.title,
  }) : super(key: key);

  final String title;
  final IconData icon;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        RoundedIconWithBackground(icon: icon),
        Text(
          title,
          style: TextStyle(
            fontSize: ktitledFontSize,
            fontWeight: FontWeight.bold,
          ),
        ),
      ],
    );
  }
}
