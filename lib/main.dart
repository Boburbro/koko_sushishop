import 'package:flutter/material.dart';
import 'package:koko_sushishop/screens/home_screen.dart';
import 'package:koko_sushishop/screens/intro_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "As Soft",
      debugShowCheckedModeBanner: false,
      home: const IntroScreen(),
      routes: {
        IntroScreen.routeName: (context) => const IntroScreen(),
        HomeScreen.routeName: (context) => const HomeScreen(),
      },
    );
  }
}
