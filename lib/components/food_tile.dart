import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:koko_sushishop/models/food.dart';

class FoodTile extends StatelessWidget {
  const FoodTile({required this.food, super.key});

  final Food food;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(right: 20),
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
      decoration: BoxDecoration(
        color: Colors.grey[100],
        borderRadius: BorderRadius.circular(20),
      ),
      child: Column(
        children: [
          Image.asset(
            food.imagePath,
            height: 130,
          ),
          Text(
            food.name,
            style: GoogleFonts.dmSerifDisplay(
                fontSize: 18, fontWeight: FontWeight.bold),
          ),
          SizedBox(
            width: 160,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text("\$${food.price}"),
                Row(
                  children: [
                    Icon(
                      Icons.star,
                      color: Colors.yellow[800],
                    ),
                    Text(food.rating),
                  ],
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
