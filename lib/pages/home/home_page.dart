import 'package:flutter/material.dart';

import 'widgets/Item_card.dart';
import 'widgets/app_bar.dart';
import 'widgets/categories.dart';
import 'widgets/item_of_row.dart';
import 'widgets/search.dart';
import 'widgets/title_with_icon.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          padding: EdgeInsets.only(bottom: 20, top: 20),
          child: Column(
            children: [
              AppBarRow(),
              Search(),
              Categories(),
              ItemCard(),
              TitleWithIcon(
                title: 'Popular',
                icon: 'assets/icons/more.png',
                onPress: () {},
              ),
              ItemOfRow(),
            ],
          ),
        ),
      ),
    );
  }
}
