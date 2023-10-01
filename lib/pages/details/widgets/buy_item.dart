import 'package:flutter/material.dart';
import 'package:plants_app/models/plant_data.dart';
import 'package:plants_app/theme/colors.dart';

class BuyItem extends StatelessWidget {
  const BuyItem({
    super.key,
    required this.size,
    required this.plant,
  });

  final Size size;
  final Plants plant;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: 20),
      width: size.width * 0.5,
      height: 50,
      decoration: BoxDecoration(
        boxShadow: [
          BoxShadow(
            color: black.withOpacity(0.1),
            spreadRadius: 4,
            blurRadius: 8,
          ),
        ],
      ),
      child: ElevatedButton(
        onPressed: () {},
        style: ElevatedButton.styleFrom(
          backgroundColor: green,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(12),
          ),
        ),
        child: Text(
          'Buy \$${plant.price}',
          style: TextStyle(
            fontSize: 18,
            fontWeight: FontWeight.w600,
          ),
        ),
      ),
    );
  }
}
