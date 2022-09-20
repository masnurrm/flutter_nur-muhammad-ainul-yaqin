import 'package:flutter/material.dart';
import 'BarcodeScreen.dart';

// ignore_for_file: public_member_api_docs

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: BarcodeScreen(),
    );
  }
}
