import 'DrawerScreen.dart';

import 'package:flutter/material.dart';
import 'ChatsModel.dart';

class HomeScreen extends StatefulWidget {
  HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Telegram App Crack Samsudin'),
        actions: const <Widget> [
          Padding(
            padding: EdgeInsets.all(8.0), 
            child: Icon(Icons.search),
          ) 
        ],
      ),

      drawer: const DrawerScreen(),

      body: Padding(
        padding: const EdgeInsets.only(top: 10),
        child: ListView.separated(
          itemCount: items.length,
          separatorBuilder: (BuildContext context, int index) => const Divider(),
          itemBuilder: (context, index) {
            return ListTile(
              leading: CircleAvatar(
                radius: 30,
                backgroundImage: NetworkImage(items[index].avatarUrl!),
              ),
              title: items[index].isRead! ? 
              Text(items[index].name!, style: const TextStyle(fontWeight: FontWeight.bold),) : 
              Row(
                children: [
                  Text(items[index].name!, style: const TextStyle(fontWeight: FontWeight.bold),),
                  const Icon(Icons.volume_mute, size: 18, color: Colors.grey,)
                ],
              ),
              subtitle: Text(items[index].message!, style: const TextStyle(color: Colors.grey),),
              trailing: (items[index].unreadCount! > 0) ? 
              Column(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  Text(items[index].time!),
                  const SizedBox(height: 5,),

                  Container(
                    height: 15,
                    width: 15,
                    decoration: BoxDecoration(
                      color: items[index].isRead! ? null : Colors.blue,
                      borderRadius: BorderRadius.circular(30),
                    ),
                  )
                ],
              ) :
              Column(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  Text(items[index].time!),
                  const SizedBox(height: 5,),
                ],
              ),
            );
          }, 
        ), 
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          // Add your onPressed code here!
        },
        backgroundColor: Colors.blue[400],
        child: const Icon(Icons.add),
      ),
    );
  }
}