import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:plants_app/theme/colors.dart';

import 'pages/splash/splash_page.dart';

void main() {
  SystemChrome.setSystemUIOverlayStyle(
    SystemUiOverlayStyle(
      statusBarColor: Colors.transparent,
    ),
  );
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Plants App',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        scaffoldBackgroundColor: white,
        appBarTheme: AppBarTheme(
          backgroundColor: white,
          elevation: 0,
        ),
        textTheme: TextTheme(
          bodyMedium: TextStyle(
            color: black,
          ),
        ),
        fontFamily: "Roboto",
      ),
      home: SplashPage(),
    );
  }
}
