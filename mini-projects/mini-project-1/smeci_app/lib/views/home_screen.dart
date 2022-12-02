import 'package:flutter/material.dart';

import 'widget/bottom_navbar.dart';
import 'widget/menu_card.dart';
import 'widget/information_card.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int _selectedIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: <Widget> [
        Container(
          color: Colors.white,
        ),
        Image.asset(
          'assets/background.png',
          fit: BoxFit.fitWidth,
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height,
        ),
        Scaffold(
          backgroundColor: Colors.transparent,
          appBar: PreferredSize(
            preferredSize: const Size.fromHeight(80),
            child: AppBar(
              backgroundColor: Colors.transparent,
              elevation: 0,
              leadingWidth: 160,
              leading: Align(
                alignment: Alignment.bottomLeft,
                child: Padding(
                  padding: const EdgeInsets.only(left: 20),
                  child: Image.asset(
                    'assets/logo-appbar.png',
                    width: 120,
                  ),
                ),
              ),
              actions: [
                Align(
                  alignment: Alignment.bottomRight,
                  child: Padding(
                    padding: const EdgeInsets.only(right: 20, top: 26),
                    child: IconButton(
                      color: Colors.black,
                      iconSize: 24,
                      icon: const Icon(Icons.settings),
                      onPressed: () {},
                    ),
                  ),
                ),
              ],
            ),
          ),
          body: Padding(
            padding: const EdgeInsets.all(20),
            child: SingleChildScrollView(
              child: Column(
                children: <Widget> [
                  const Align(
                    alignment: Alignment.centerLeft,
                    child: Text.rich(
                      TextSpan(
                        text: 'Halo, ',
                        style: TextStyle(
                          fontSize: 20
                        ),
                        children: <InlineSpan>[
                          TextSpan(
                            text: 'Nur Muhammad!',
                            style: TextStyle(
                              fontSize: 20, 
                              fontWeight: FontWeight.bold
                            ),
                          )
                        ]
                      )
                    ),
                  ),
                  const SizedBox(height: 16,),
                  Container(
                    margin: const EdgeInsets.symmetric(vertical: 20.0),
                    height: 210.0,
                    child: ListView(
                      scrollDirection: Axis.horizontal,
                      children: const <Widget>[
                        InformationCard(image: 'assets/Foto Update.png', title: 'Update Aplikasi', subtitle: 'Update aplikasi SMECI untuk performa yang lebih bagus!',),
                        SizedBox(width: 12,),
                        InformationCard(image: 'assets/Foto Update.png', title: 'Bantuan Dana!', subtitle: 'Dapatkan bantuan dana dari Disperindag Surabaya!',),
                      ],
                    ),
                  ),
                  // const SizedBox(height: 16,),
                  const Align(
                    alignment: Alignment.centerLeft,
                    child: Text(
                      'Menu',
                      style: TextStyle(
                        fontSize: 20, 
                        fontWeight: FontWeight.bold
                      ),
                    ),
                  ),
                  const SizedBox(height: 16,),
                  Container(
                    margin: const EdgeInsets.symmetric(vertical: 20.0),
                    height: 600,
                    child: GridView.count (
                      crossAxisCount: 2,
                      childAspectRatio: (.526 / .474),
                      shrinkWrap: true,
                      crossAxisSpacing: 12,
                      mainAxisSpacing: 12,
                      children: const <Widget>[
                        MenuCard(routes: '/quality_level', icon: 'assets/Test.png', title: 'Quality Self Assesment', subtitle: 'Hasil: Cukup Baik'),
                        MenuCard(routes: '/maturity_assesment', icon: 'assets/Sales.png', title: 'Maturity Self Assesment', subtitle: 'Hasil: Level 4'),
                        MenuCard(routes: '/maturity_assesment', icon: 'assets/Handshake.png', title: 'Bantuan Dana UMKM', subtitle: 'Belum Ada Pengajuan'),
                        MenuCard(routes: '/maturity_assesment', icon: 'assets/Profile.png', title: 'Profil UMKM Anda', subtitle: 'Lihat Profil UMKM'),
                        MenuCard(routes: '/maturity_assesment', icon: 'assets/Crowd.png', title: 'Cara Penggunaan', subtitle: 'Pelajari Lebih Lanjut'),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
          bottomNavigationBar: const BottomNavBar(),
        ),
      ],
    );
  }
}