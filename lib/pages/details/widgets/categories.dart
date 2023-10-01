import 'package:flutter/material.dart';
import 'package:plants_app/theme/colors.dart';

class Categories extends StatelessWidget {
  const Categories({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(
        horizontal: 20.0,
        vertical: 20,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Treatment',
            style: TextStyle(
              color: black,
              fontSize: 18,
              fontWeight: FontWeight.w600,
            ),
          ),
          SizedBox(height: 10),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Image.asset(
                'assets/icons/sun.png',
                width: 40,
                height: 40,
              ),
              Image.asset(
                'assets/icons/drop.png',
                width: 40,
                height: 40,
              ),
              Image.asset(
                'assets/icons/temperature.png',
                width: 40,
                height: 40,
              ),
              Image.asset(
                'assets/icons/up_arrow.png',
                width: 40,
                height: 40,
              ),
            ],
          ),
        ],
      ),
    );
  }
}
