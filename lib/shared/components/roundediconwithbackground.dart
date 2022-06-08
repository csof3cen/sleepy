import 'package:flutter/material.dart';
import 'package:sleepy/consts.dart';

class RoundedIconWithBackground extends StatelessWidget {
  const RoundedIconWithBackground({
    Key? key,
    required this.icon,
  }) : super(key: key);

  final IconData icon;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(right: 10),
      padding: const EdgeInsets.all(10),
      decoration: BoxDecoration(
        color: kFgColor,
        borderRadius: BorderRadius.circular(20),
      ),
      child: Icon(
        icon,
        size: 20,
        color: kBgColor,
      ),
    );
  }
}