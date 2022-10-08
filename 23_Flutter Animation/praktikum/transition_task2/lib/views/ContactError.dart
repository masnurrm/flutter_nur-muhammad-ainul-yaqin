import 'package:flutter/material.dart';

class ContactError extends StatelessWidget {
  const ContactError({super.key});

  @override
  Widget build(BuildContext context) {
    return const Center(
      child: Text(
        'Something went wrong',
        style: TextStyle(
          fontSize: 20,
          fontWeight: FontWeight.bold,
          color: Colors.red,
        ),
      ),
    );
  }
}