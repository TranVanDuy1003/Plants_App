import 'package:flutter/material.dart';
import 'package:plants_app/theme/colors.dart';

class Categories extends StatefulWidget {
  Categories({super.key});

  @override
  State<Categories> createState() => _CategoriesState();
}

class _CategoriesState extends State<Categories> {
  int selectedIndex = 0;

  List<String> categories = [
    'All',
    'Outdoor',
    'Indoor',
    'Office',
    'Garden',
  ];

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 50,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: categories.length,
        itemBuilder: (context, index) => GestureDetector(
          onTap: () {
            setState(() {
              selectedIndex = index;
            });
          },
          child: Container(
            margin: EdgeInsets.only(left: 20),
            padding: EdgeInsets.symmetric(horizontal: 15),
            alignment: Alignment.center,
            decoration: BoxDecoration(
              border: Border.all(
                color: selectedIndex == index ? green : grey,
                width: 1.4,
              ),
              borderRadius: BorderRadius.circular(12),
            ),
            child: Text(
              categories[index],
              style: TextStyle(
                color: selectedIndex == index ? green : grey,
                fontSize: selectedIndex == index ? 17 : 15,
                fontWeight: FontWeight.w500,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
