import 'package:flutter/material.dart';
import 'package:sleepy/consts.dart';

class ScreenTitle extends StatelessWidget {
  const ScreenTitle({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: kPadding),
      child: Text(
        "Votre Mission",
        style: Theme.of(context).textTheme.headline6,
      ),
    );
  }
}