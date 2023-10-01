import 'package:flutter/material.dart';
import 'package:plants_app/theme/colors.dart';

class TitleWithIcon extends StatelessWidget {
  const TitleWithIcon({
    super.key,
    required this.title,
    required this.icon,
    required this.onPress,
  });
  final String title;
  final String icon;
  final onPress;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            title,
            style: TextStyle(
              color: black,
              fontSize: 18,
              fontWeight: FontWeight.w500,
            ),
          ),
          IconButton(
            onPressed: onPress,
            splashRadius: 25,
            icon: Image.asset(
              icon,
              scale: 1.3,
            ),
          )
        ],
      ),
    );
  }
}
