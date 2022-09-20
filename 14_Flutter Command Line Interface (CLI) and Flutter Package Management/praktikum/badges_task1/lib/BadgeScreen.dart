import 'package:badges/badges.dart';
import 'package:flutter/material.dart';

class BadgeScreen extends StatelessWidget {
  const BadgeScreen({super.key});
  
  get padding => null;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text('Badge Task 1'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget> [
            Padding(
              padding: const EdgeInsets.all(8),
              child: Badge(
                badgeColor: Colors.deepPurple,
                borderRadius: BorderRadius.circular(100),
                padding: const EdgeInsets.only(top: 12, bottom: 12, left: 20, right: 20),
                shape: BadgeShape.square,
                badgeContent: const Text(
                  'BADGE',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 20,
                  ),
                ),
              ),
            ),
            // const SizedBox(height:10),
            Padding(
              padding: const EdgeInsets.all(8),
              child: Badge(
                badgeColor: Colors.deepPurple,
                borderRadius: BorderRadius.circular(100),
                padding: EdgeInsets.all(padding ?? 4),
                shape: BadgeShape.square,
                badgeContent: const Text(
                  'BADGE',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 20,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}