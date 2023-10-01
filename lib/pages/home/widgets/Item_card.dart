import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:plants_app/models/plant_data.dart';
import 'package:plants_app/theme/colors.dart';

import '../../details/details_page.dart';

class ItemCard extends StatelessWidget {
  const ItemCard({super.key});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      margin: EdgeInsets.only(top: 20, bottom: 10),
      height: 300,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: plants.length,
        padding: EdgeInsets.all(5),
        itemBuilder: (context, index) => Card(
          size: size,
          plant: plants[index],
        ),
      ),
    );
  }
}

class Card extends StatelessWidget {
  const Card({
    super.key,
    required this.size,
    required this.plant,
  });
  final Plants plant;
  final Size size;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => DetailsPage(plant: plant),
          ),
        );
      },
      child: Container(
        width: size.width * 0.5,
        margin: EdgeInsets.symmetric(horizontal: 20),
        decoration: BoxDecoration(
          color: white,
          border: Border.all(
            color: green,
            width: 2.5,
          ),
          borderRadius: BorderRadius.circular(20),
          boxShadow: [
            BoxShadow(
              color: black.withOpacity(0.1),
              spreadRadius: 1,
              blurRadius: 8,
            ),
          ],
        ),
        child: Stack(
          alignment: Alignment.bottomCenter,
          children: [
            Padding(
              padding: const EdgeInsets.all(5.0),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(20),
                child: Image.asset(
                  plant.imagePath,
                  fit: BoxFit.fitHeight,
                  height: 300,
                  width: size.width * 0.5,
                ),
              ),
            ),
            Positioned(
              right: 10,
              top: 10,
              child: Container(
                padding: EdgeInsets.all(3),
                decoration: BoxDecoration(
                  color: green,
                  borderRadius: BorderRadius.circular(12),
                ),
                child: Icon(
                  CupertinoIcons.add,
                  color: white,
                ),
              ),
            ),
            Positioned(
              bottom: 10,
              child: Text(
                '${plant.name} - \$${plant.price}',
                style: TextStyle(
                  color: black,
                  fontSize: 15,
                  fontWeight: FontWeight.w600,
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
