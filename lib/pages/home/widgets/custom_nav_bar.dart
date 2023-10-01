import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:plants_app/theme/colors.dart';

class CustomNavBar extends StatefulWidget {
  const CustomNavBar({
    super.key,
    this.currentIndex,
  });
  final currentIndex;

  @override
  State<CustomNavBar> createState() => _CustomNavBarState();
}

class _CustomNavBarState extends State<CustomNavBar> {
  int currentIndex = 0;
  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      currentIndex: currentIndex,
      type: BottomNavigationBarType.fixed,
      unselectedIconTheme: IconThemeData(color: grey),
      selectedIconTheme: IconThemeData(color: green),
      selectedItemColor: green,
      selectedFontSize: 17,
      iconSize: 20,
      onTap: (value) {
        setState(() {
          currentIndex = value;
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
    );
  }
}
