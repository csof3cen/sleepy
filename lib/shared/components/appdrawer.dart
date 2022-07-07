import 'package:flutter/material.dart';
import 'package:sleepy/consts.dart';

class AppDrawer extends StatelessWidget {
  const AppDrawer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      backgroundColor: kCardColor,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          DrawerHeader(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  margin: const EdgeInsets.only(top: 10),
                  width: 1000,
                  child: Wrap(
                    children: [
                      Text(
                        appName,
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
                      Container(
                        margin: const EdgeInsets.only(top: 20),
                        child: Text(
                          appDescription,
                          maxLines: 4,
                          overflow: TextOverflow.ellipsis,
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          Container(
            margin: EdgeInsets.only(
              left: MediaQuery.of(context).size.width * 0.05,
              right: MediaQuery.of(context).size.width * 0.05,
              top: 10,
              bottom: MediaQuery.of(context).size.height * 0.05,
            ),
            width: 1000,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                ElevatedButton(
                  onPressed: () {},
                  child: const Text("À propos"),
                ),
                ElevatedButton(
                  onPressed: () {},
                  child: const Text("Nous Contacter"),
                ),
                ElevatedButton(
                  onPressed: () {},
                  child: const Text("Laisser un feedback"),
                ),
                Divider(height: MediaQuery.of(context).size.height * 0.05),
                SizedBox(
                  width: 1000,
                  child: TextButton(
                    style: TextButton.styleFrom(
                      backgroundColor: Colors.red,
                      shape: RoundedRectangleBorder(
                        borderRadius:
                            BorderRadius.circular(kButtonsCornerRadius),
                      ),
                    ),
                    onPressed: () {},
                    child: Text(
                      "Se déconnecter",
                      style: Theme.of(context)
                          .textTheme
                          .headline6
                          ?.copyWith(color: Colors.white),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
