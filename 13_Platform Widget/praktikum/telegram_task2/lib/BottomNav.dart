// ignore: file_names
import 'package:flutter/cupertino.dart';
import 'ChatsPage.dart';

class BottomNav extends StatelessWidget {
  const BottomNav({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CupertinoTabScaffold(
      tabBar: CupertinoTabBar(
        height: 60,
        backgroundColor: const Color.fromARGB(255, 240, 240, 240),
        items: const [
          BottomNavigationBarItem(
            icon: Icon(
              CupertinoIcons.person_circle_fill,
            ),
            label: "Contacts"
          ),
          BottomNavigationBarItem(
            icon: Icon(
              CupertinoIcons.phone_circle_fill,
            ),
            label: "Calls"
          ),
          BottomNavigationBarItem(
            icon: Icon(
              CupertinoIcons.chat_bubble_2_fill,
            ),
            label: "Chats"
          ),
          BottomNavigationBarItem(
            icon: Icon(
              CupertinoIcons.settings,
            ),
            label: "Settings"
          ),
        ]
      ),
      tabBuilder: (context, index) {
        return const ChatsPage();
      }
    );
  }
}