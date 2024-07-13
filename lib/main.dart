import 'package:flutter/material.dart';
import 'models/shop.dart';
import 'package:provider/provider.dart';
import 'screens/home_screen.dart';
import 'screens/intro_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => Shop(),
      child: MaterialApp(
        title: "As Soft",
        debugShowCheckedModeBanner: false,
        home: const IntroScreen(),
        routes: {
          IntroScreen.routeName: (context) => const IntroScreen(),
          HomeScreen.routeName: (context) => const HomeScreen(),
        },
      ),
    );
  }
}
