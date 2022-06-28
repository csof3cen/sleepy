import 'package:sleepy/config.dart';
import 'package:sleepy/consts.dart';
import 'package:flutter/material.dart';
import 'package:sleepy/shared/components/card.dart';
import 'package:sleepy/shared/components/iconandtitle.dart';
import 'package:sleepy/shared/components/tagiconwithtext.dart';

class ScheduleInfosCard extends StatefulWidget {
  const ScheduleInfosCard({Key? key}) : super(key: key);

  @override
  State<ScheduleInfosCard> createState() => _ScheduleInfosCardState();
}

class _ScheduleInfosCardState extends State<ScheduleInfosCard> {
  @override
  Widget build(BuildContext context) {
    return CustomCard(
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const Expanded(
                flex: 10,
                child: IconAndTitle(title: "Programmer", icon: Icons.alarm),
              ),
              const Spacer(),
              Expanded(
                flex: 4,
                child: Row(
                  children: const [
                    Text(
                      "Total : ",
                      style: TextStyle(
                        fontWeight: FontWeight.w900,
                      ),
                    ),
                    Text(
                      "6h",
                      style: TextStyle(fontSize: 18),
                    ),
                  ],
                ),
              ),
            ],
          ),
          Padding(
            padding: EdgeInsets.only(top: kPadding),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.baseline,
              textBaseline: TextBaseline.alphabetic,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Se coucher",
                      style: TextStyle(color: kGray, fontSize: 17),
                    ),
                    const SizedBox(height: 15),
                    Hero(
                      tag: "sleeptime",
                      child: Text(
                        "22:OO",
                        style: TextStyle(
                          fontSize: MediaQuery.of(context).size.width * 0.1,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    )
                  ],
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Se lever",
                      style: TextStyle(color: kGray, fontSize: 17),
                    ),
                    const SizedBox(height: 15),
                    Hero(
                      tag: "uptime",
                      child: Text(
                        "05:OO",
                        style: TextStyle(
                          fontSize: MediaQuery.of(context).size.width * 0.1,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    )
                  ],
                ),
              ],
            ),
          ),
          Padding(
            padding: EdgeInsets.only(top: kPadding),
            child: SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: const [
                  TagIconWithText(title: "Tous les jours", icon: Icons.alarm),
                  SizedBox(width: 10),
                  TagIconWithText(title: "Avec musique", icon: Icons.music_note),
                ],
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(top: kPadding),
            child: TextButton(
              onPressed: () {
                Navigator.pushNamed(context, selectTimeRoute);
              },
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: const [
                  Icon(Icons.access_time_rounded),
                  SizedBox(width: 15),
                  Text("Changer l'heure"),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
