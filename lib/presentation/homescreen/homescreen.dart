import 'components/musiccard.dart';
import 'package:sleepy/consts.dart';
import 'components/screentitle.dart';
import 'package:flutter/material.dart';
import 'components/scheduleinfoscard.dart';
import 'components/upcomingeventscard.dart';
import 'package:sleepy/shared/components/bottomnavigationbar.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kBgColor,
      bottomNavigationBar: const CustomBottomNavigationBar(),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: kPadding, vertical: 10),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: const [
                ScreenTitle(),
                ScheduleInfosCard(),
                MusicCard(),
                UpcomingEventsCard(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
