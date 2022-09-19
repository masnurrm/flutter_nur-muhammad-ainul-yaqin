// ignore: file_names
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'ChatBar.dart';
import 'SearchBar.dart';
import 'MessageList.dart';

class ChatsPage extends StatelessWidget {
  const ChatsPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CupertinoPageScaffold(
      navigationBar: CupertinoNavigationBar(
        border: Border.all(color: CupertinoColors.white, width: 0),
        trailing: const Icon(
          CupertinoIcons.arrow_2_squarepath,
          color: CupertinoColors.activeBlue,
        ),
        leading: const Text(
          "Edit",
          style: TextStyle(
            color: CupertinoColors.activeBlue,
          ),
        ),
        middle: Column(
          children: const [
            Text(
              "Chats",
              style: TextStyle(
                color: CupertinoColors.black,
                fontSize: 18,  
              ),
            ),
          ],
        ),
        backgroundColor: CupertinoColors.white,
        padding: const EdgeInsetsDirectional.only(top: 10, bottom: 10, end: 20, start: 20),
      ),
      backgroundColor: CupertinoColors.white,
      child: Column(
        children: [
          const SearchBar(),
          const ChatBar(),
          Expanded(
            child: Container(
              height: double.infinity,
              width: double.infinity,
              decoration: BoxDecoration(
                color: CupertinoColors.white,
                border: Border.all(color: CupertinoColors.systemGrey, width: 0.5)
              ),
              child: Padding(
                padding: const EdgeInsets.all(20),
                child: ListView(
                  children: const [
                    MessageList(
                      name: "Nur Muhammad", 
                      message: "Hello, how are you?", 
                      time: "15:30", 
                      avatarUrl: "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQO0UCaimWJEl82GtY49oTgEZRUvsCxVtQkFyWte244&s",
                    ),
                    Divider(),
                    MessageList(
                      name: "Rizky",
                      message: "I love you",
                      time: "15:00",
                      avatarUrl: "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQO0UCaimWJEl82GtY49oTgEZRUvsCxVtQkFyWte244&s",
                    ),
                    Divider(),
                    MessageList(
                      name: "Ayang Samsu",
                      message: "Sayang, mau kemana?",
                      time: "14:30",
                      avatarUrl: "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQO0UCaimWJEl82GtY49oTgEZRUvsCxVtQkFyWte244&s",
                    ),
                    Divider(),
                    MessageList(
                      name: "Ayang Samsu",
                      message: "Sayang, mau kemana?",
                      time: "14:30",
                      avatarUrl: "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQO0UCaimWJEl82GtY49oTgEZRUvsCxVtQkFyWte244&s",
                    ),
                    Divider(),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }  // ignore: non_constant_identifier_names
}

