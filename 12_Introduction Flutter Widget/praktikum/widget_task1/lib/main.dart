import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:intl/intl.dart';
import 'dart:async';
import 'dart:io';

void main(List<String> args) {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() {
    return MyAppState();
  } 
}

class MyAppState extends State<MyApp> {
  String? clock;
  Timer? timer;

  @override
  void initState() {
    super.initState();
    timer = Timer.periodic(const Duration(seconds: 1), (Timer t) {
      setState(() {
        clock = DateFormat('HH:mm:ss').format(DateTime.now());
      });
    });
  }

  @override
  void dispose() {
    timer?.cancel();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Auto Clock Task 1',
      home: Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: const Text('Auto Clock Task 1'),
          backgroundColor: Colors.deepPurpleAccent,
        ),
        body: Center(
          child: Text(
            clock ?? '',
            style: const TextStyle(
              fontSize: 50,
              fontWeight: FontWeight.bold,
            ), 
          ),
        ),
      ),
    );
  }
}