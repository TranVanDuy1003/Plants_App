import 'package:flutter/material.dart';
import 'package:plants_app/theme/colors.dart';

class AppBarRow extends StatelessWidget {
  const AppBarRow({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          IconButton(
            onPressed: () {},
            splashRadius: 25,
            icon: Image.asset(
              'assets/icons/menu.png',
              color: black,
              width: 25,
              height: 25,
            ),
          ),
          Container(
            height: 50,
            width: 50,
            decoration: BoxDecoration(
              color: green,
              borderRadius: BorderRadius.circular(12),
            ),
            child: Image.asset(
              'assets/images/pro.png',
              fit: BoxFit.contain,
            ),
          ),
        ],
      ),
    );
  }
}
