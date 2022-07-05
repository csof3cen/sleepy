import 'package:sleepy/consts.dart';
import 'package:flutter/material.dart';
import 'package:sleepy/shared/components/card.dart';
import 'package:sleepy/shared/components/iconandtitle.dart';

class UpcomingEventsCard extends StatelessWidget {
  const UpcomingEventsCard({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(top: kPadding, bottom: 20),
      child: CustomCard(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const IconAndTitle(
                icon: Icons.date_range_outlined, title: "Évènements à venir"),
            Padding(
              padding: EdgeInsets.only(top: kPadding),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Aujourd'hui",
                    style: TextStyle(color: kGray, fontSize: 17),
                  ),
                  const SizedBox(height: 10),
                  Text(
                    "14 Novembre 2022",
                    style: Theme.of(context)
                        .textTheme
                        .headline6
                        ?.copyWith(fontWeight: FontWeight.bold),
                    maxLines: 1,
                    overflow: TextOverflow.ellipsis,
                  ),
                ],
              ),
            ),
            Padding(
              padding: EdgeInsets.only(top: kPadding),
              child: ElevatedButton(
                onPressed: () {},
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: const [
                    Icon(Icons.calendar_today_outlined),
                    SizedBox(width: 15),
                    Text("Calendrier"),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
