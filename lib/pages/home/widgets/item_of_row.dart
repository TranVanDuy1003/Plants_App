import 'package:flutter/material.dart';
import 'package:plants_app/models/plant_data.dart';
import 'package:plants_app/theme/colors.dart';

class ItemOfRow extends StatelessWidget {
  const ItemOfRow({super.key});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      height: size.height * 0.2,
      child: ListView.builder(
        itemCount: populerPlants.length,
        scrollDirection: Axis.horizontal,
        padding: EdgeInsets.all(5),
        itemBuilder: (context, index) => Container(
          width: size.width * 0.5,
          margin: EdgeInsets.symmetric(horizontal: 20),
          padding: EdgeInsets.all(5),
          decoration: BoxDecoration(
            color: lightGrey,
            borderRadius: BorderRadius.circular(20),
          ),
          child: Stack(
            children: [
              Image.asset(
                populerPlants[index].imagePath,
                height: size.height * 0.15,
              ),
              Positioned(
                right: 10,
                child: Image.asset(
                  'assets/icons/heart.png',
                  color: Colors.red,
                ),
              ),
              Positioned(
                left: 10,
                bottom: 0,
                child: Row(
                  children: [
                    Text(
                      populerPlants[index].name,
                      style: TextStyle(
                        color: black,
                        fontSize: 15,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                    SizedBox(width: 30),
                    Text(
                      '\$${populerPlants[index].price}',
                      style: TextStyle(
                        color: black,
                        fontSize: 15,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
