import 'package:flutter/material.dart';

class BottomNavBar extends StatelessWidget {
  const BottomNavBar({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      type: BottomNavigationBarType.fixed,
      backgroundColor: Colors.transparent,
      elevation: 0,
      iconSize: 28,
      
      unselectedLabelStyle: const TextStyle(fontSize: 10),
      unselectedItemColor: const Color(0xFFBDBDBD),

      selectedLabelStyle: const TextStyle(fontSize: 10),
      selectedItemColor: const Color(0xFF000000),
      
      currentIndex: 0,
      // onTap: _onItemTapped(index: 10),
      items: const <BottomNavigationBarItem>[
        BottomNavigationBarItem(
          icon: Icon(Icons.home_rounded),
          label: 'Home',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.handshake_rounded),
          label: 'Service',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.announcement_rounded),
          label: 'Publication',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.info_rounded),
          label: 'About Us',
        ),
      ],
    );
  }
}

// void _onItemTapped(int index) {
//   setState(() {
//     _selectedIndex = index;
//   });
// }