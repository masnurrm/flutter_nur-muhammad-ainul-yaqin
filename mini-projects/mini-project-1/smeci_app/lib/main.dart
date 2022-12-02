import 'package:flutter/material.dart';
import 'package:smeci_app/views/home_screen.dart';
import 'package:smeci_app/views/login_screen.dart';
import 'package:smeci_app/views/maturity_assesment_screen.dart';
import 'package:smeci_app/views/result_maturity_assesment_screen.dart';

import '../views/splash_screen.dart';
import 'views/quality_level_detail_screen.dart';
import 'views/quality_level_screen.dart';
import 'views/sign_up_screen.dart';
import 'views/sign_up_umkm_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'SMECI App',
      initialRoute: '/splash',
      routes: {
        '/': (context) => const HomeScreen(),
        '/splash':(context) => const SplashScreen(),
        '/login': (context) => const LoginScreen(),
        '/sign_up_user':(context) => const SignUpUser(),
        '/sign_up_umkm':(context) => const SignUpUMKM(),
        '/maturity_assesment': (context) => const MaturityAssesment(),
        '/result_maturity':(context) => const ResultMaturityAssesment(),
        '/quality_level': (context) => const QualityLevel(),
        '/quality_level_detail': (context) => const QualityLevelDetail(),
      },
    );
  }
}