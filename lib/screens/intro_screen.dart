import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:koko_sushishop/components/my_button.dart';
import 'package:koko_sushishop/screens/home_screen.dart';

class IntroScreen extends StatelessWidget {
  static const routeName = '/intropage';

  const IntroScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 138, 60, 55),
      body: Padding(
        padding: const EdgeInsets.all(25.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(height: 25),
            Text(
              "SUSHI MAN",
              style: GoogleFonts.dmSerifDisplay(
                fontSize: 25,
                color: Colors.white,
              ),
            ),
            const SizedBox(height: 20),
            Padding(
              padding: const EdgeInsets.all(40.0),
              child: Image.asset("assets/salmon_eggs.png"),
            ),
            const SizedBox(height: 20),
            Text(
              "THE TASTE OF JAPANESE FOOD",
              style: GoogleFonts.dmSerifDisplay(
                fontSize: 34,
                color: Colors.white,
              ),
            ),
            const SizedBox(height: 10),
            Text(
              "Feel the taste of the most popular Japanese food from anywhere and anytime",
              style: TextStyle(
                color: Colors.grey[300],
              ),
            ),
            const SizedBox(height: 20),
            MyButton(
              text: "Get started",
              onTap: () => Navigator.of(context)
                  .pushReplacementNamed(HomeScreen.routeName),
            )
          ],
        ),
      ),
    );
  }
}
