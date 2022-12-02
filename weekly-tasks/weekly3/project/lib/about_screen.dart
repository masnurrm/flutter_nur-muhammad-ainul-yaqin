import 'dart:ui';
import '../model/about_data.dart';

import 'package:flutter/material.dart';

class AboutUs extends StatefulWidget {
  const AboutUs({super.key});

  @override
  State<AboutUs> createState() => _AboutUsState();
}

class _AboutUsState extends State<AboutUs> {
  double rateZero = 0.0;
  double rateOne = 0.0;
  double rateTwo = 0.0;
  double rateThree = 0.0;
  double rateFour = 0.0;
  double rateFive = 0.0;
  double rateSix = 0.0;
  double rateSeven = 0.0;
  double rateEight = 90.0;

  String? asset;
  double? top;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('About Us'),
        centerTitle: true,
        backgroundColor: const Color.fromARGB(255, 33, 0, 2),
      ),
      drawer: Drawer(
        // Add a ListView to the drawer. This ensures the user can scroll
        // through the options in the drawer if there isn't enough vertical
        // space to fit everything.
        child: ListView(
          // Important: Remove any padding from the ListView.
          padding: EdgeInsets.zero,
          children: [
            const DrawerHeader(
              decoration: BoxDecoration(
                color: const Color.fromARGB(255, 33, 0, 2),
                image: DecorationImage(
                  image: NetworkImage('https://avatars.githubusercontent.com/u/64957624?v=4'),
                  fit: BoxFit.cover,
                ),
              ),
              child: Text(''),
            ),
            ListTile(
              title: const Text('Contact Us'),
              onTap: () {
                Navigator.pushNamed(context, '/contact');
              },
            ),
            ListTile(
              title: const Text('About Us'),
              onTap: () {
                Navigator.pushNamed(context, '/about');
              },
            ),
            ListTile(
              title: const Text('Login'),
              onTap: () {
                Navigator.pushNamed(context, '/login');
              },
            ),
          ],
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              color: const Color.fromARGB(255, 33, 0, 2),
              width: double.infinity,
              padding: const EdgeInsets.only(top: 20),
              child: Center(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: const <Widget>[
                    Text(
                      "Halo!",
                      style: TextStyle(
                        fontSize: 20,
                        fontFamily: "Montserrat-Regular",
                        letterSpacing: 1.8,
                        color: Color(0xFFFFAF00)
                      ),
                    ),
                    Text(
                      "Jasa Kami!",
                      style: TextStyle(
                        fontSize: 40,
                        fontFamily: "Montserrat-Regular",
                        fontWeight: FontWeight.bold,
                        letterSpacing: 1.8,
                        color: Color(0xFFFFAF00)
                      ),
                    ),
                    SizedBox(height: 20),
                    SizedBox(
                      width: 190,
                      child: Divider(
                        height: 1,
                        color: Color(0xFFFFAF00)
                      ),
                    ),
                    SizedBox(height: 20),
                    SizedBox(height: 20),
                ],
                ),
              ),
            ),
            Container(
              color: const Color.fromARGB(255, 33, 0, 2),
              width: double.infinity,
              padding: const EdgeInsets.only(left: 40, right: 40),
              child: GridView.builder(
                scrollDirection: Axis.vertical,
                shrinkWrap: true,
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  crossAxisSpacing: 10,
                  mainAxisSpacing: 10,
                ),
                itemBuilder: (context, index) {
                  return ElevatedButton(
                      onPressed: () {
                      },
                      style: ElevatedButton.styleFrom(
                        side: const BorderSide(color: Color(0xFFFFAF00), width: 1),
                        primary: const Color.fromARGB(255, 33, 0, 2),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10),
                        ),
                      ),
                      child: Center(
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Image(
                              width: 60,
                              image: NetworkImage(items[index].image!),
                            ),
                            const SizedBox(height: 20),
                            Text(
                              items[index].title!,
                              style: const TextStyle(
                                fontSize: 16,
                              ),
                            ),
                            const SizedBox(height: 4),
                            Text(
                              '${items[index].projects!} project selesai',
                              style: const TextStyle(
                                fontSize: 12,
                                color: Color(0xFFFFAF00),
                              ),
                            )
                          ],
                        )
                      ),
                  );
                },
                itemCount: items.length,
              )
            ),
            const SizedBox(height: 60),
          ],
        )
      )
    );
  }
}