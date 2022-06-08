import 'package:sleepy/consts.dart';
import 'package:flutter/material.dart';
import 'package:sleepy/shared/components/card.dart';
import 'package:sleepy/shared/components/iconandtitle.dart';
import 'package:sleepy/shared/components/tagiconwithtext.dart';

class MusicCard extends StatelessWidget {
  const MusicCard({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: kPadding),
      child: CustomCard(
        child: Column(
          children: [
            const IconAndTitle(icon: Icons.music_note, title: "Musique"),
            Container(
              margin: EdgeInsets.only(top: kPadding),
              child: Row(
                children: [
                  GestureDetector(
                    onTap: () {},
                    child: Container(
                      padding: const EdgeInsets.all(10),
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(50),
                      ),
                      child: Icon(
                        Icons.play_arrow,
                        size: 50,
                        color: kBgColor,
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: kPadding),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Rainy in the midnight",
                          style: Theme.of(context).textTheme.headline6?.copyWith(fontWeight: FontWeight.bold),
                          overflow: TextOverflow.ellipsis,
                          maxLines: 1,
                        ),
                        const SizedBox(height: 10),
                        Text(
                          "Yiruma",
                          overflow: TextOverflow.ellipsis,
                          maxLines: 1,
                          style: TextStyle(
                            color: kGray,
                            fontSize: 16,
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            Container(
              margin: EdgeInsets.only(top: kPadding / 2),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const TagIconWithText(title: "Répéter", icon: Icons.repeat),
                  TextButton(onPressed: () {}, child: const Text("Changer"))
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
