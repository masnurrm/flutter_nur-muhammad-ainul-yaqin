import 'package:flutter/material.dart';

import 'package:flutter/cupertino.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';



Color primaryColor = Color(0xFFFDE4F9);
Color secondaryColor = Color(0xFFB5E0E9);
Color thirdColor = Color(0xFFE4E9EE);

class QualityLevel extends StatefulWidget {
  const QualityLevel({super.key});

  @override
  State<QualityLevel> createState() => _QualityLevelState();
}

class _QualityLevelState extends State<QualityLevel> {
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: <Widget> [
        Container(
          color: Colors.white,
        ),
        Image.asset(
          'assets/background.png',
          fit: BoxFit.fitWidth,
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height,
        ),
        Scaffold(
          backgroundColor: Colors.transparent,
          appBar: PreferredSize(
            preferredSize: const Size.fromHeight(80),
            child: AppBar(
              backgroundColor: Colors.transparent,
              elevation: 0,
              leading: Align(
                alignment: Alignment.bottomLeft,
                child: InkWell(
                  onTap: () {
                    Navigator.pushNamed(context, '/');
                  },
                  child: const Padding(
                    padding: EdgeInsets.only(left: 20),
                    child: Icon(
                      Icons.arrow_back,
                      color: Colors.black,
                      size: 24,
                    ),
                  ),
                ),
              ),
              title: const Align(
                alignment: Alignment.bottomLeft,
                child: Padding(
                  padding: EdgeInsets.only(left: 20, top: 30),
                  child: Align(
                    alignment: Alignment.centerLeft,
                    child: Text(
                      'Quality Self Assesment',
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ),
              ),
              centerTitle: true,
            ),
          ),
          body: Padding(
            padding: const EdgeInsets.all(20),
            child: SingleChildScrollView(
              child: Column(
                children: <Widget> [
                   const Align(
                    alignment: Alignment.center,
                    child: Text(
                      'Anda saat ini berada di Level 4',
                      style: TextStyle(
                        fontSize: 20, 
                        fontWeight: FontWeight.w600
                      ),
                    ),
                  ),
                  const SizedBox(height: 20),
                  LevelCard(colorCard: primaryColor, icon: 'assets/level-1.png', title: 'Level 1', subtitle: 'Level sudah tuntas'),
                  const SizedBox(height: 12),
                  LevelCard(colorCard: primaryColor, icon: 'assets/level-1.png', title: 'Level 2', subtitle: 'Level sudah tuntas'),
                  const SizedBox(height: 12),
                  LevelCard(colorCard: primaryColor, icon: 'assets/level-1.png', title: 'Level 3', subtitle: 'Level sudah tuntas'),
                  const SizedBox(height: 12),
                  LevelCard(colorCard: secondaryColor, icon: 'assets/level-1.png', title: 'Level 4', subtitle: 'Klik untuk menuntaskan level'),
                  const SizedBox(height: 12),
                  LevelCard(colorCard: thirdColor, icon: 'assets/level-1.png', title: 'Level 5', subtitle: 'Level belum terbuka'),
                  const SizedBox(height: 12),
                  LevelCard(colorCard: thirdColor, icon: 'assets/level-1.png', title: 'Level 6', subtitle: 'Level belum terbuka'),
                  const SizedBox(height: 12),
                  LevelCard(colorCard: thirdColor, icon: 'assets/level-1.png', title: 'Level 7', subtitle: 'Level belum terbuka'),
                  const SizedBox(height: 40),
                ]
              )
            )
          ),
        )
      ]
    );
  }
}


class LevelCard extends StatelessWidget {
  const LevelCard({
    Key? key,
    required this.colorCard,
    required this.icon,
    required this.title,
    required this.subtitle,
  }) : super(key: key);

  final Color? colorCard;
  final String? icon;
  final String? title;
  final String? subtitle;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.pushNamed(context, '/quality_level_detail');
      },
      child: Container(
        decoration: BoxDecoration(
          color: colorCard!,
          borderRadius: BorderRadius.circular(10),
          // boxShadow: [
          //   BoxShadow(
          //     color: Colors.grey.withOpacity(0.4),
          //     spreadRadius: 1,
          //     blurRadius: 7,
          //     offset: const Offset(0, 0),
          //   ),
          // ],
        ),
        child: Row(
          children: [
            Image.asset(
              icon!,
              width: 100,
            ),
            const SizedBox(width: 8),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  title!,
                  style: const TextStyle(
                    fontSize: 20, 
                    fontWeight: FontWeight.bold
                  ),
                ),
                const SizedBox(height: 4),
                Text(
                  subtitle!,
                  style: const TextStyle(
                    fontSize: 16, 
                    fontWeight: FontWeight.w400
                  ),
                ),
              ],
            ),
          ],
        )
      ),
    );
  }
}