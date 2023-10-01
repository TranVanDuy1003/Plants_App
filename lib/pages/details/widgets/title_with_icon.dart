import 'package:flutter/material.dart';
import 'package:plants_app/models/plant_data.dart';
import 'package:plants_app/theme/colors.dart';

class TitleWithIcon extends StatelessWidget {
  const TitleWithIcon({
    super.key,
    required this.plant,
  });

  final Plants plant;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(
        top: 20.0,
        left: 20,
        right: 20,
        bottom: 10,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: [
              Text(
                plant.name,
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.w600,
                ),
              ),
              SizedBox(width: 10),
              Text(
                '(${plant.category})',
                style: TextStyle(
                  color: grey,
                  fontSize: 18,
                  fontWeight: FontWeight.w600,
                ),
              ),
            ],
          ),
          Container(
            padding: EdgeInsets.all(5),
            decoration: BoxDecoration(
              color: green,
              borderRadius: BorderRadius.circular(12),
            ),
            child: Image.asset(
              'assets/icons/heart.png',
              color: white,
              scale: 1,
            ),
          ),
        ],
      ),
    );
  }
}
