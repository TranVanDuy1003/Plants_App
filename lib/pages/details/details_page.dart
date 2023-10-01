import 'package:flutter/material.dart';
import 'package:plants_app/models/plant_data.dart';
import 'package:plants_app/pages/details/widgets/buy_item.dart';
import 'package:plants_app/pages/details/widgets/categories.dart';

import 'widgets/image_with_appbar.dart';
import 'widgets/sub_title.dart';
import 'widgets/title_with_icon.dart';

class DetailsPage extends StatelessWidget {
  const DetailsPage({super.key, required this.plant});
  final Plants plant;
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            ImageWithAppbar(size: size, plant: plant),
            TitleWithIcon(plant: plant),
            SubTitle(plant: plant),
            Categories(),
            BuyItem(size: size, plant: plant)
          ],
        ),
      ),
    );
  }
}
