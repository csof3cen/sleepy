import 'package:flutter/material.dart';
import 'package:sleepy/shared/components/scaffoldconfig.dart';

class StatsScreen extends StatelessWidget {
  const StatsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ScaffoldConfig(
      index: 1,
      showBottomNavigationBar: true,
      children: [
        Container(
          height: 500,
          width: 300,
          color: Colors.red,
        ),
      ],
    );
  }
}
