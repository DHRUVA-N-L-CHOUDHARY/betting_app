// ignore_for_file: must_be_immutable

import 'package:betting_app/screens/My_bets.dart';
import 'package:betting_app/screens/Profile_screen.dart';
import 'package:betting_app/screens/Tournaments_screen.dart';
import 'package:betting_app/utils/Colors.dart';
import 'package:flutter/material.dart';

class NavigationScreen extends StatefulWidget {
  late int tabIndex;
  NavigationScreen({super.key, this.tabIndex = 2});

  @override
  State<NavigationScreen> createState() => _NavigationScreenState();
}

class _NavigationScreenState extends State<NavigationScreen> {
  void changeTabIndex(int index) {
    setState(() {
      widget.tabIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: IndexedStack(
          index: widget.tabIndex,
          children: const [
            TournamentsScreen(),
            ProfilePage(),
            MyBetsScreen(),
            ProfilePage(),
          ],
        ),
      ),
      bottomNavigationBar: SizedBox(
        height: 57,
        child: BottomNavigationBar(
          unselectedItemColor: Colors.black,
          selectedItemColor: KPrimaryColor,
          onTap: changeTabIndex,
          iconSize: 15.0,
          showSelectedLabels: true,
          showUnselectedLabels: true,
          type: BottomNavigationBarType.shifting,
          currentIndex: widget.tabIndex,
          items: [
            _bottomNavigationBarItem(
              icon: 'assets/news.png',
              label: "Home",
            ),
            _bottomNavigationBarItem(
              icon: 'assets/games.png',
              label: "Games",
            ),
            _bottomNavigationBarItem(
              icon: 'assets/mybets.png',
              label: "Bets",
            ),
            _bottomNavigationBarItem(
              icon: 'assets/profile.png',
              label: "Profile",
            ),
          ],
        ),
      ),
    );
  }

  _bottomNavigationBarItem({required String icon, required String label}) {
    return BottomNavigationBarItem(
      icon: Image.asset(
        icon,
        scale: 1.7,
        height: 26,
        color: Colors.black54,
      ),
      activeIcon: Image.asset(icon, scale: 1.3, height: 27, color: KPrimaryColor),
      label: label,
    );
  }
}
