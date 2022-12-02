import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:smeci_app/views/home_screen.dart';
import 'package:smeci_app/views/login_screen.dart';
import 'package:smeci_app/views/sign_up_screen.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreen();
}

class _SplashScreen extends State<SplashScreen> {

  @override
  void initState() {
    Future.delayed(const Duration(seconds: 5)).then((value) => Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => const LoginScreen() )));
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Center(
            child: Image.asset(
              'assets/splash.png',
              fit: BoxFit.fill
            ),
          ),
          Center(
            child: Image.asset(
              'assets/logo-typeface.png',
              width: MediaQuery.of(context).size.width / 1.3,
            ),
          ),
          Center(
            child: Container(
              padding: const EdgeInsets.only(bottom: 32),
              child: Align(
                alignment: Alignment.bottomCenter,
                child: Text(
                  'By Nur Muhammad',
                  style: GoogleFonts.lato(
                    color: const Color.fromARGB(255, 14, 14, 14),
                    fontSize: 12.0,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}