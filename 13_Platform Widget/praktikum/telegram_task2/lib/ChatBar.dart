// ignore: file_names
import 'package:flutter/cupertino.dart';

class ChatBar extends StatelessWidget {
  const ChatBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(left: 25, right: 25, top: 15, bottom: 15),
      child: SingleChildScrollView(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: const [
            Text(
              "All chats",
              style: TextStyle(
                color: CupertinoColors.systemGrey,
                fontWeight: FontWeight.bold,
              ),
            ),
            Text(
              "Work",
              style: TextStyle(
                color: CupertinoColors.systemGrey,
                fontWeight: FontWeight.bold,
              ),
            ),
            Text(
              "Unread",
              style: TextStyle(
                color: CupertinoColors.activeBlue,
                fontWeight: FontWeight.bold,
              ),
            ),
            Text(
              "Personal",
              style: TextStyle(
                color: CupertinoColors.systemGrey,
                fontWeight: FontWeight.bold,
              ),
            ),
          ],
        ),
      ),
    );
  }
}