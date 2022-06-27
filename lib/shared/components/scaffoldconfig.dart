import 'package:sleepy/consts.dart';
import 'package:flutter/material.dart';
import 'package:sleepy/shared/components/bottomnavigationbar.dart';

class ScaffoldConfig extends StatelessWidget {
  const ScaffoldConfig({
    required this.children,
    this.showBottomNavigationBar = false,
    Key? key,
  }) : super(key: key);

  final List<Widget> children;
  final bool showBottomNavigationBar;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kBgColor,
      bottomNavigationBar:
          showBottomNavigationBar ? const CustomBottomNavigationBar() : null,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: kPadding, vertical: 10),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: children,
            ),
          ),
        ),
      ),
    );
  }
}
