import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'view/about_view.dart';
import 'view/data_view.dart';
import 'view/homepage_view.dart';
import 'view/login_view.dart';

void main() {
  // SystemChrome.setPreferredOrientations([DeviceOrientation.landscapeLeft]).then((_) {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: new ThemeData(scaffoldBackgroundColor: const Color.fromARGB(255, 33, 0, 2),),
      initialRoute: '/about',
      routes: {
        // '/': (context) => HomePage(),
        '/about':(context) => AboutUs(),
        '/contact':(context) => HomePage(),
        '/login':(context) => Login(),
        '/data_user':(context) => DataUser(),
      },
      title: 'Flutter Weekly Task 1',
      debugShowCheckedModeBanner: false,
      home: HomePage(),
    );
  }
}