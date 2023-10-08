import 'package:flutter/material.dart';
import 'package:plants_app/theme/colors.dart';

import '../../../models/plant_data.dart';
import '../../cart/cart_page.dart';

class ImageWithAppbar extends StatelessWidget {
  const ImageWithAppbar({
    super.key,
    required this.size,
    required this.plant,
  });

  final Size size;
  final Plants plant;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: size.width,
      height: size.height * 0.60,
      decoration: BoxDecoration(
        boxShadow: [
          BoxShadow(
            color: green.withOpacity(0.2),
            spreadRadius: 2,
            blurRadius: 10,
          )
        ],
        borderRadius: BorderRadius.only(
          bottomRight: Radius.circular(50),
        ),
      ),
      child: Stack(
        children: [
          ClipRRect(
            borderRadius: BorderRadius.only(
              bottomRight: Radius.circular(50),
            ),
            child: Image.asset(
              plant.imagePath,
              width: size.width,
              fit: BoxFit.cover,
            ),
          ),
          Positioned(
            top: 40,
            left: 10,
            right: 10,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                IconButton(
                  splashRadius: 25,
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  icon: Image.asset(
                    'assets/icons/back_arrow.png',
                    scale: 1,
                  ),
                ),
                IconButton(
                  splashRadius: 25,
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => CartPage(),
                      ),
                    );
                  },
                  icon: Image.asset(
                    'assets/icons/cart.png',
                    scale: 1,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
