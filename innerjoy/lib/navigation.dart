import 'package:flutter/material.dart';
import 'Main_page.dart';
import 'mespages/settings.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'mespages/specialistes.dart';

class NaviagtionPage extends StatefulWidget {
  NaviagtionPage({super.key});

  @override
  State<NaviagtionPage> createState() => _NaviagtionPageState();
}

class _NaviagtionPageState extends State<NaviagtionPage> {
  @override
  int currentindex = 0;
  List<Widget> screen = [
    const Mymainpage(),
    const Nosspecialistes(),
    const Settings(),
  ];
  void _listbotton(int index) {
    currentindex = index;
  }

  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF2D2E33),
      body: Container(),
      bottomSheet: screen[currentindex],
      bottomNavigationBar: BottomNavigationBar(
          backgroundColor: Colors.white,
          selectedItemColor: Colors.deepPurple,
          unselectedItemColor: Colors.black,
          currentIndex: currentindex,
          type: BottomNavigationBarType.fixed,
          onTap: (index) {
            setState(() {
              currentindex = index;
            });
          },
          items: const [
            BottomNavigationBarItem(
              icon: Icon(
                (Icons.home),
                size: 20,
              ),
              label: 'Acceuil',
            ),
            BottomNavigationBarItem(
              icon: Icon(
                (Icons.person),
                size: 20,
              ),
              label: 'Specialistes',
            ),
            BottomNavigationBarItem(
              icon: Icon(
                (Icons.settings),
                size: 20,
              ),
              label: 'Parametres',
            ),
          ]),
    );
  }
}
