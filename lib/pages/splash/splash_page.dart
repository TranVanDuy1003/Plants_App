import 'package:flutter/material.dart';
import 'package:plants_app/pages/page.dart';
import 'package:plants_app/theme/colors.dart';

class SplashPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text(
              'Let\'s plant with us',
              style: TextStyle(
                color: black,
                fontSize: 25,
                fontWeight: FontWeight.w500,
              ),
            ),
            SizedBox(height: 25),
            Text(
              'Bring nature home',
              style: TextStyle(
                color: grey,
                fontSize: 20,
              ),
            ),
            Image.asset(
              'assets/images/Asset1.png',
              fit: BoxFit.cover,
            ),
            SizedBox(height: 25),
            Container(
              width: 200,
              decoration: BoxDecoration(boxShadow: [
                BoxShadow(
                  color: black.withOpacity(0.1),
                  blurRadius: 8,
                  spreadRadius: 2,
                )
              ]),
              child: ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => Pages(),
                    ),
                  );
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: green,
                  padding: EdgeInsets.all(10),
                  textStyle: TextStyle(
                    color: white,
                    fontSize: 18,
                    fontWeight: FontWeight.w600,
                  ),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(12),
                  ),
                ),
                child: Text('Sign In'),
              ),
            ),
            SizedBox(height: 10),
            TextButton(
              onPressed: () {},
              child: Text(
                'Forgot Password?',
                style: TextStyle(
                  color: grey,
                  fontSize: 16,
                  fontWeight: FontWeight.w500,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
