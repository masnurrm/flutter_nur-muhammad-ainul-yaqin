import '../bloc/contact_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../views/ContactCreate.dart';
import '../views/ContactMain.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (_) => ContactBloc(),
        ),
      ],
      child: MaterialApp(
        title: 'Contact App with Bloc Section 22',
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        debugShowCheckedModeBanner: false,
        routes: {
          '/': (context) => const ContactMain(),
          '/createContact': (context) => const ContactCreate(),
        }
      ),
    );
  }
}
