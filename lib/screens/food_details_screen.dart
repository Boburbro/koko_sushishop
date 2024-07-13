import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import '../models/shop.dart';
import 'cart_screen.dart';
import 'package:provider/provider.dart';
import '../components/my_button.dart';
import '../theme/colors.dart';

import '../models/food.dart';

class FoodDetailsScreen extends StatefulWidget {
  final Food food;

  const FoodDetailsScreen({
    required this.food,
    super.key,
  });

  @override
  State<FoodDetailsScreen> createState() => _FoodDetailsScreenState();
}

class _FoodDetailsScreenState extends State<FoodDetailsScreen> {
  int quantity = 1;

  void increment() {
    setState(() {
      quantity++;
    });
  }

  void dicrement() {
    if (quantity == 1) {
      return;
    }
    setState(() {
      quantity--;
    });
  }

  void addToCart(
    BuildContext ctx,
    String id,
    Food food,
    int quantity,
  ) {
    context.read<Shop>().addToCart(
          id,
          food,
          quantity,
        );
    showDialog(
      context: ctx,
      barrierDismissible: false,
      builder: (ctx) => AlertDialog(
        backgroundColor: primaryColor,
        content: const Text(
          "Successfully added to cart",
          style: TextStyle(color: Colors.white),
          textAlign: TextAlign.center,
        ),
        actions: [
          TextButton.icon(
            onPressed: () {
              Navigator.of(ctx).pop();
              Navigator.of(ctx).pushReplacement(
                CupertinoPageRoute(
                  builder: (_) => const CartScreen(),
                ),
              );
            },
            label: const Text(
              'Go to cart',
              style: TextStyle(color: Colors.white),
            ),
            icon: const Icon(
              Icons.shopping_cart_checkout_rounded,
              color: Colors.white,
            ),
          ),
          IconButton(
            onPressed: () {
              Navigator.of(ctx).pop();
              Navigator.of(ctx).pop();
            },
            icon: const Icon(
              Icons.done_rounded,
              color: Colors.white,
            ),
          ),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        foregroundColor: Colors.grey[900],
        leading: IconButton(
            onPressed: () => Navigator.of(context).pop(),
            icon: const Icon(
              Icons.arrow_back_ios,
            )),
      ),
      body: Column(
        children: [
          Expanded(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 25.0),
              child: ListView(
                children: [
                  Hero(
                    tag: widget.food.imagePath,
                    child: Image.asset(
                      widget.food.imagePath,
                      height: 200,
                    ),
                  ),
                  const SizedBox(height: 20),
                  Row(
                    children: [
                      Icon(
                        Icons.star_rounded,
                        color: Colors.yellow[800],
                      ),
                      const SizedBox(width: 5),
                      Text(
                        widget.food.rating,
                      )
                    ],
                  ),
                  Text(
                    widget.food.name,
                    style: GoogleFonts.dmSerifDisplay(fontSize: 28),
                  ),
                  const SizedBox(height: 25),
                  Text(
                    "Description",
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                      color: Colors.grey[900],
                    ),
                  ),
                  Text(
                    widget.food.description,
                    style: TextStyle(
                      color: Colors.grey[600],
                      fontSize: 14,
                      height: 1.8,
                    ),
                  )
                ],
              ),
            ),
          ),
          Container(
            color: const Color.fromARGB(255, 138, 60, 55),
            padding: const EdgeInsets.symmetric(horizontal: 25, vertical: 10),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "\$${widget.food.price}  x  $quantity = \$${(widget.food.price * quantity).toStringAsFixed(2)}",
                      style: const TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: 18,
                      ),
                    ),
                    Row(
                      children: [
                        Container(
                          decoration: BoxDecoration(
                            color: secondaryColor,
                            shape: BoxShape.circle,
                          ),
                          child: IconButton(
                              onPressed: dicrement,
                              icon: const Icon(
                                Icons.remove_rounded,
                                color: Colors.white,
                              )),
                        ),
                        SizedBox(
                          width: 20,
                          child: Center(
                            child: Text(
                              "$quantity",
                              style: const TextStyle(
                                color: Colors.white,
                              ),
                            ),
                          ),
                        ),
                        Container(
                          decoration: BoxDecoration(
                            color: secondaryColor,
                            shape: BoxShape.circle,
                          ),
                          child: IconButton(
                            onPressed: increment,
                            icon: const Icon(
                              Icons.add_rounded,
                              color: Colors.white,
                            ),
                          ),
                        ),
                      ],
                    )
                  ],
                ),
                const SizedBox(height: 10),
                MyButton(
                    text: "Add to card",
                    onTap: () {
                      addToCart(
                        context,
                        UniqueKey().toString(),
                        widget.food,
                        quantity,
                      );
                    }),
              ],
            ),
          )
        ],
      ),
    );
  }
}
