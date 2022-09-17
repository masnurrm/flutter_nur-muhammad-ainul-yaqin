import 'package:flutter/material.dart';
import 'Drawer.dart';
import 'ChatsModel.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Telegram'),
        actions: <Widget> [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Icon(Icons.search),
          )
        ],
      ),

      drawer: DrawerScreen(),

      body: Padding(
        padding: const EdgeInsets.only(top: 10),
        child: ListView.separated(
          itemBuilder: (context, index) {
            return ListTile(
              
              leading: CircleAvatar(
                radius: 30,
                backgroundImage: AssetImage(items[index].avatarUrl!),
              ),

              title: items[index].isRead! ?
              Text(items[index].name!, style: TextStyle(fontWeight: FontWeight.bold),) :
              Row(children: [
                Text(items[index].name!, style: TextStyle(fontWeight: FontWeight.bold),),
                Icon(Icons.volume_mute, size: 18, color: Colors.grey[400],)
              ],),
              subtitle: Text(items[index].message!, style: TextStyle(color: Colors.grey),),

              trailing: items[index].unreadCount == 0 ? 
              Column(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  Text(items[index].time!),
                  const SizedBox(height: 7,),

                  Container(
                    decoration: BoxDecoration(
                      color: items[index].isRead! ? Colors.green : Colors.grey[400],
                      borderRadius: BorderRadius.circular(30),
                    ),
                  )
                ],
              ):

              Column(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  Text(items[index].time!),
                  SizedBox(height: 7,),
                ],
              )
            );
          }, separatorBuilder: (BuildContext context, int index) => const Divider(), itemCount: items.length),
        ),
      );
  }
}

