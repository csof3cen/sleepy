import 'package:flutter/material.dart';
import 'package:sleepy/consts.dart';

class AppDrawer extends StatelessWidget {
  const AppDrawer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      backgroundColor: kCardColor,
      child: Column(
        children: [
          DrawerHeader(
            child: Column(
              children: [
                Container(
                  margin: const EdgeInsets.only(top: 10),
                  width: 1000,
                  child: Wrap(
                    children: [
                      Text(
                        "Sleepy",
                        style: Theme.of(context).textTheme.headline5,
                      ),
                      Container(
                        margin: const EdgeInsets.only(top: 5),
                        child: const Text(
                          "Par Serigne Moustapha Sy Ndoye",
                          maxLines: 2,
                          overflow: TextOverflow.ellipsis,
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
