import 'package:sleepy/consts.dart';
import 'package:flutter/material.dart';
import 'package:sleepy/shared/components/appdrawer.dart';
import 'package:sleepy/shared/components/bottomnavigationbar.dart';

class ScaffoldConfig extends StatelessWidget {
  const ScaffoldConfig({
    required this.children,
    this.showBottomNavigationBar = false,
    this.showAppBar = false,
    Key? key,
  }) : super(key: key);

  final List<Widget> children;
  final bool showBottomNavigationBar;
  final bool showAppBar;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kBgColor,
      bottomNavigationBar:
          showBottomNavigationBar ? const CustomBottomNavigationBar() : null,
      appBar: showAppBar
          ? AppBar(
              backgroundColor: kBgColor.withBlue(255),
              title: Text(
                appName,
                style: const TextStyle(
                  fontWeight: FontWeight.bold,
                  letterSpacing: 1.5,
                ),
              ),
              centerTitle: true,
            )
          : null,
      drawer: showAppBar ? const AppDrawer() : null,
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
