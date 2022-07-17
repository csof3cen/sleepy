import 'package:flutter/material.dart';
import 'package:sleepy/consts.dart';
import 'package:sleepy/shared/components/scaffoldconfig.dart';

class SelectSleepMusicScreen extends StatelessWidget {
  const SelectSleepMusicScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ScaffoldConfig(
      index: 9,
      children: [
        GestureDetector(
          onTap: () => Navigator.pop(context),
          child: const Padding(
            padding: EdgeInsets.all(8.0),
            child: Icon(Icons.arrow_back),
          ),
        ),
        Container(
          margin: EdgeInsets.symmetric(vertical: MediaQuery.of(context).size.height * 0.06),
          child: Text(
            "Musique de sommeil",
            style: Theme.of(context).textTheme.headline6?.copyWith(fontWeight: FontWeight.bold),
          ),
        ),
        Divider(color: kGray),
        Padding(
          padding: EdgeInsets.symmetric(vertical: kPadding),
          child: Text(
            "Ajouter",
            style: TextStyle(
              color: kFgColor,
              fontSize: ktitledFontSize,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
        Row(
          children: [
            TextButton(
              onPressed: () {},
              child: Row(
                children: [
                  const Icon(
                    Icons.add,
                    size: 30,
                  ),
                  Text(
                    "Ajouter une musique",
                    style: Theme.of(context).textTheme.headline6?.copyWith(
                          color: kBgColor,
                        ),
                  ),
                ],
              ),
            ),
          ],
        ),
        Padding(
          padding: EdgeInsets.symmetric(vertical: kPadding),
          child: Divider(color: kGray),
        ),
        Text(
          "Vos musiques",
          style: TextStyle(
            color: kFgColor,
            fontSize: ktitledFontSize,
            fontWeight: FontWeight.bold,
          ),
        ),
        Container(
          margin: EdgeInsets.only(top: kPadding),
          child: Row(
            children: [
              ClipRRect(
                borderRadius: BorderRadius.circular(1000),
                child: TextButton(
                  onPressed: () {},
                  style: TextButton.styleFrom(
                    backgroundColor: Colors.white,
                    padding: const EdgeInsets.all(8),
                  ),
                  child: const Icon(
                    Icons.play_arrow,
                    size: 50,
                  ),
                ),
              ),
              Column(
                children: const [
                  Text("Wind "),
                ],
              )
            ],
          ),
        )
      ],
    );
  }
}
