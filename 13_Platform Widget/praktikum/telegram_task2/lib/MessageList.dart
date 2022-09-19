// ignore: file_names
import 'package:flutter/material.dart';

class MessageList extends StatelessWidget {
  const MessageList({
    Key? key,
    required this.name,
    required this.message,
    required this.time,
    required this.avatarUrl,
  }) : super(key: key);

  final String name;
  final String message;
  final String time;
  final String avatarUrl;

  @override
  Widget build(BuildContext context) {
    String imgUrl = avatarUrl;

    return GestureDetector(
      onTap: () {},
      child: Container(
        padding: const EdgeInsets.all(5),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const CircleAvatar(
              radius: 25,
              // backgroundImage: NetworkImage(imgUrl),
              backgroundImage: NetworkImage("https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQO0UCaimWJEl82GtY49oTgEZRUvsCxVtQkFyWte244&s"),
            ),
            const SizedBox(
              width: 15,
            ),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    name,
                    style: const TextStyle(
                        fontWeight: FontWeight.bold, fontSize: 18),
                  ),
                  const SizedBox(
                    height: 8,
                  ),
                  Text(
                    message,
                    style: const TextStyle(
                        fontWeight: FontWeight.normal,
                        fontSize: 15,
                        color: Color(0xffb6b6b6)),
                    maxLines: 1,
                    overflow: TextOverflow.ellipsis,
                  )
                ],
              ),
            ),
            Text(
              time,
              style: const TextStyle(fontSize: 13, color: Color(0xffb6b6b6)),
            ),
          ],
        ),
      ),
    );
  }
}
