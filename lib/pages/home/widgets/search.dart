import 'package:flutter/material.dart';
import 'package:plants_app/theme/colors.dart';

class Search extends StatelessWidget {
  const Search({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 20),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Container(
            width: MediaQuery.of(context).size.width * 0.75,
            height: 50,
            child: TextField(
              textCapitalization: TextCapitalization.words,
              textInputAction: TextInputAction.search,
              cursorColor: green,
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.w400,
              ),
              decoration: InputDecoration(
                border: InputBorder.none,
                suffixIcon: Image.asset(
                  'assets/icons/search.png',
                  scale: 1.7,
                ),
                hintText: 'Search here...',
                hintStyle: TextStyle(
                  color: grey,
                  fontSize: 16,
                ),
                focusedBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: green, width: 1.5),
                  borderRadius: BorderRadius.circular(12),
                ),
                enabledBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: grey, width: 1.5),
                  borderRadius: BorderRadius.circular(12),
                ),
              ),
            ),
          ),
          Container(
            height: 50,
            padding: EdgeInsets.all(12),
            decoration: BoxDecoration(
              color: green,
              borderRadius: BorderRadius.circular(12),
            ),
            child: Image.asset(
              'assets/icons/adjust.png',
              color: white,
            ),
          )
        ],
      ),
    );
  }
}
