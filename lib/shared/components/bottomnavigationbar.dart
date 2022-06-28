import 'package:flutter/material.dart';
import 'package:sleepy/consts.dart';

class CustomBottomNavigationBar extends StatelessWidget {
  const CustomBottomNavigationBar({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: kBgColor,
        boxShadow: const [
          BoxShadow(
            color: Colors.black54,
            offset: Offset(0, -10),
            blurRadius: 90,
          ),
        ],
      ),
      height: MediaQuery.of(context).size.height * 0.13,
      child: Padding(
        padding: const EdgeInsets.only(top: 8.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            BottomNavigationBarButton(
              active: true,
              title: "Mission",
              onTapped: () {},
              icon: Icons.adjust_outlined,
            ),
            BottomNavigationBarButton(
              title: "Résultats",
              icon: Icons.pie_chart,
              active: false,
              onTapped: () {},
            ),
          ],
        ),
      ),
    );
  }
}

class BottomNavigationBarButton extends StatelessWidget {
  const BottomNavigationBarButton({
    Key? key,
    required this.active,
    required this.title,
    required this.onTapped,
    required this.icon,
  }) : super(key: key);

  final bool active;
  final String title;
  final Function onTapped;
  final IconData icon;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      child: GestureDetector(
        onTap: onTapped(),
        child: Container(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Column(
            children: [
              Icon(icon, size: 30, color: active ? Colors.white : kGray),
              Padding(
                padding: const EdgeInsets.only(top: 5),
                child: Text(
                  title,
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    color: active ? Colors.white : kGray,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
