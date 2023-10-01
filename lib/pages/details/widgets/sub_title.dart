import 'package:flutter/material.dart';
import 'package:plants_app/models/plant_data.dart';
import 'package:plants_app/theme/colors.dart';

class SubTitle extends StatelessWidget {
  const SubTitle({
    super.key,
    required this.plant,
  });

  final Plants plant;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20.0),
      child: Text(
        plant.description,
        style: TextStyle(
          color: grey,
          fontSize: 17,
        ),
        textAlign: TextAlign.start,
      ),
    );
  }
}
