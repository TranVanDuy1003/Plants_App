import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:plants_app/theme/colors.dart';

import 'cart/cart_page.dart';
import 'favorite/favorite_page.dart';
import 'home/home_page.dart';
import 'settings/settings_page.dart';

class Pages extends StatefulWidget {
  const Pages({super.key});

  @override
  State<Pages> createState() => _PagesState();
}

int currentIndex = 0;

class _PagesState extends State<Pages> {
  @override
  Widget build(BuildContext context) {
    final Tabs = [
      HomePage(),
      FavoritePage(),
      CartPage(),
      SettingsPage(),
    ];
    return Scaffold(
      body: Tabs[currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: currentIndex,
        type: BottomNavigationBarType.fixed,
        unselectedIconTheme: IconThemeData(color: grey),
        selectedIconTheme: IconThemeData(color: green),
        selectedItemColor: green,
        selectedFontSize: 17,
        iconSize: 20,
        onTap: (index) {
          setState(() {
            currentIndex = index;
          });
        },
        items: [
          BottomNavigationBarItem(
            icon: Icon(
              Icons.home,
            ),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.favorite,
            ),
            label: 'favorite',
          ),
          BottomNavigationBarItem(
            icon: Icon(
              CupertinoIcons.cart,
            ),
            label: 'Cart',
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.settings,
            ),
            label: 'Settings',
          ),
        ],
      ),
    );
  }
}
