import 'package:flutter/material.dart';
import 'package:sleepy/shared/components/scaffoldconfig.dart';

class SettingsScreen extends StatelessWidget {
  const SettingsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ScaffoldConfig(
      showBottomNavigationBar: true,
      index: 2,
      children: [
        Center(
          child: Container(
            margin: EdgeInsets.only(top: 100),
            width: 300,
            height: 500,
            color: Colors.green,
          ),
        ),
      ],
    );
  }
}
