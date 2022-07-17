import 'package:flutter/cupertino.dart';

import 'components/musiccard.dart';
import 'components/screentitle.dart';
import 'package:flutter/material.dart';
import 'components/scheduleinfoscard.dart';
import 'components/upcomingeventscard.dart';
import 'package:sleepy/shared/components/scaffoldconfig.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const ScaffoldConfig(
      index: 0,
      showBottomNavigationBar: true,
      showAppBar: true,
      children: [
        ScreenTitle(),
        ScheduleInfosCard(),
        MusicCard(),
        UpcomingEventsCard(),
      ],
    );
  }
}
