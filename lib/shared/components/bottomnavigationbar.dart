import 'package:flutter/material.dart';
import 'package:sleepy/consts.dart';

class CustomBottomNavigationBar extends StatelessWidget {
  const CustomBottomNavigationBar({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height * 0.09,
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 8.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            BottomNavigationBarButton(
              active: true,
              title: "Mission",
              onTap: () {},
              icon: Icons.adjust_outlined,
            ),
            BottomNavigationBarButton(
              title: "Résultats",
              icon: Icons.pie_chart,
              active: false,
              onTap: () {},
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
    required this.onTap,
    required this.icon,
  }) : super(key: key);

  final bool active;
  final String title;
  final Function onTap;
  final IconData icon;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      child: GestureDetector(
        onTap: onTap(),
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
