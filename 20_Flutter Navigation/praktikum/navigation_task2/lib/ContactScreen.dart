import 'package:flutter/material.dart';
import 'NewContactScreen.dart';

import 'package:faker/faker.dart';

class ContactScreen extends StatefulWidget {
  const ContactScreen({super.key});

  @override
  State<ContactScreen> createState() => _ContactScreenState();
}

class _ContactScreenState extends State<ContactScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: const Text('Contact'),
        ),
        body: ListView.builder(
          padding: const EdgeInsets.only(bottom: 8),
          itemCount: 100,
          itemBuilder: (context, index) {
            return ListTile(
              leading: CircleAvatar(
                backgroundColor: const Color.fromARGB(255, 12, 172, 95),
                child: Text(
                  faker.person.firstName()[0],
                  style: const TextStyle(color: Colors.white),
                ),
              ),
              minLeadingWidth: 45,
              title: Text(
                faker.person.name(),
                style: const TextStyle(color: Color.fromARGB(255, 0, 0, 0), fontWeight: FontWeight.w500),
              ),
              subtitle: Text(faker.phoneNumber.us()),
            );
          },
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            // Add your onPressed code here!
            Navigator.of(context).pushNamed(
              '/newContact',
            );
          },
          backgroundColor: Colors.blue[400],
          child: const Icon(Icons.add),
        ),
      ),
    );
  }
}