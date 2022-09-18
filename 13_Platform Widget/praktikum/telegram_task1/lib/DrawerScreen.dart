import 'package:flutter/material.dart';

class DrawerScreen extends StatefulWidget {
  const DrawerScreen({super.key});

  @override
  State<DrawerScreen> createState() => _DrawerScreenState();
}

class _DrawerScreenState extends State<DrawerScreen> {
  var _icon = Icons.brightness_2;
  
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        children: <Widget> [
          UserAccountsDrawerHeader(
            accountName: Text('Nur Muhammad'),
            currentAccountPicture: CircleAvatar(
              backgroundImage: NetworkImage("https://assets.promediateknologi.com/crop/0x0:0x0/x/photo/2022/08/10/3254472262.jpg"),
            ),
            accountEmail: Text('sangmastahnm@gmail.com', style: TextStyle(color: Colors.white70),),
          
            otherAccountsPictures: [
              IconButton(
                icon: Icon(
                  _icon,
                  color: Colors.white,
                  size: 25,
                ),
                onPressed: () {
                  if(_icon == Icons.brightness_2) {
                    _icon = Icons.wb_sunny;
                  }
                  else {
                    _icon = Icons.brightness_2;
                  }
                },
              ),
            ],
          ),

          DrawerListTile(
            iconData: Icons.group,
            title: 'New Group',
            onTilePressed: () {},
          ),

          DrawerListTile(
            iconData: Icons.person_outline,
            title: 'Contacts',
            onTilePressed: () {},
          ),

          DrawerListTile(
            iconData: Icons.call,
            title: 'Calls',
            onTilePressed: () {},
          ),

          DrawerListTile(
            iconData: Icons.place_outlined,
            title: 'People Nearby',
            onTilePressed: () {},
          ),

          DrawerListTile(
            iconData: Icons.bookmark_border,
            title: 'Saved Messages',
            onTilePressed: () {},
          ),

          DrawerListTile(
            iconData: Icons.settings,
            title: 'Settings',
            onTilePressed: () {},
          ),

          const Divider(),

          DrawerListTile(
            iconData: Icons.person_add,
            title: 'Invite Friends',
            onTilePressed: () {},
          ),

          DrawerListTile(
            iconData: Icons.help_outline,
            title: 'Telegram FAQ',
            onTilePressed: () {},
          )
        ],
      )
    );
  }
}

class DrawerListTile extends StatelessWidget {
  final IconData iconData;
  final String title;
  final VoidCallback onTilePressed;

  const DrawerListTile({
    Key? key,
    required this.iconData,
    required this.title,
    required this.onTilePressed,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListTile(
      onTap: onTilePressed,
      dense: true,
      leading: Icon(iconData),
      title: Text(
        title,
        style: TextStyle(
          fontSize: 16,
        ),
      ),
    );
  }
}