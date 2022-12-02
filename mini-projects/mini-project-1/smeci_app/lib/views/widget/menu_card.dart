import 'package:flutter/material.dart';
import '../maturity_assesment_screen.dart';

import 'package:smeci_app/main.dart';

Color primaryColor = const Color(0xFFB5E0E9);

class MenuCard extends StatelessWidget {
  const MenuCard({
    Key? key,
    required this.routes,
    required this.icon,
    required this.title,
    required this.subtitle,
  }) : super(key: key);

  final String? routes;
  final String? icon;
  final String? title;
  final String? subtitle;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.pushNamed(context, routes!);
      },
      child: ClipRRect(
        borderRadius: const BorderRadius.all(Radius.circular(10)),
        child: Container(
          padding: const EdgeInsets.all(10),
          decoration: BoxDecoration(
            boxShadow: [
              BoxShadow(
                color: primaryColor,
                spreadRadius: 100,
                blurRadius: 100,
                blurStyle: BlurStyle.normal,
                offset: Offset.zero, 
              ),
            ],
          ),
          child: Container(
            padding: const EdgeInsets.symmetric(horizontal: 10),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Image.asset(
                  icon!,
                  width: 62,
                ),
                Text(
                  title!,
                  textAlign: TextAlign.left,
                  style: const TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.bold
                  ),
                ),
                const SizedBox(height: 4),
                Text(
                  subtitle!,
                  textAlign: TextAlign.left,
                  style: const TextStyle(
                    fontSize: 12,
                    fontWeight: FontWeight.w500
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}