import 'package:flutter/material.dart';

class InformationCard extends StatelessWidget {
  const InformationCard({
    Key? key,
    required this.image,
    required this.title,
    required this.subtitle,
  }) : super(key: key);

  final String? image;
  final String? title;
  final String? subtitle;

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: const BorderRadius.all(Radius.circular(10)),
      child: Container(
        padding: const EdgeInsets.symmetric(vertical:16, horizontal: 10),
        width: 188.0,
        height: 180.0,
        decoration: const BoxDecoration(
          boxShadow: [
            BoxShadow(
              color: Color.fromARGB(255, 242, 242, 242),
              spreadRadius: 100,
              blurRadius: 100,
              blurStyle: BlurStyle.normal,
              offset: Offset.zero, 
            ),
          ],
        ),
        child: Center(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Image.asset(
                image!,
                fit: BoxFit.fitWidth,
              ),
              const SizedBox(height: 10),
              Text(
                title!,
                style: const TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.bold
                ),
                textAlign: TextAlign.center,
              ),
              const SizedBox(height: 4),
              Text(
                subtitle!,
                textAlign: TextAlign.center,
              ),
            ],
          ),
        ),
      ),
    );
  }
}