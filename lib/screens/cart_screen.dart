import 'package:flutter/material.dart';
import '../components/my_button.dart';
import '../models/shop.dart';
import '../theme/colors.dart';
import 'package:provider/provider.dart';

class CartScreen extends StatelessWidget {
  const CartScreen({super.key});

  // ignore: non_constant_identifier_names
  void remove_cart({
    required BuildContext ctx,
    required void Function() onPressed,
  }) {
    showDialog(
      context: ctx,
      builder: (ctx) => AlertDialog(
        backgroundColor: primaryColor,
        content: const Text(
          "Are you sure you want to remove this?!",
          style: TextStyle(
            color: Colors.white,
          ),
        ),
        actions: [
          FilledButton(
            onPressed: () => Navigator.pop(ctx),
            style: FilledButton.styleFrom(backgroundColor: secondaryColor),
            child: const Text(
              "No",
            ),
          ),
          TextButton(
            onPressed: onPressed,
            child: const Text(
              "Yes",
              style: TextStyle(
                color: Colors.white,
              ),
            ),
          ),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: primaryColor,
      appBar: AppBar(
        foregroundColor: Colors.white,
        backgroundColor: primaryColor,
        title: const Text(
          "My carts",
          style: TextStyle(
            fontWeight: FontWeight.bold,
          ),
        ),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
        child: Consumer<Shop>(
          builder: (context, value, child) => value.carts.isEmpty
              ? Center(
                  child: MyButton(
                    text: "Go to shopping",
                    onTap: () => Navigator.pop(context),
                  ),
                )
              : Column(
                  children: [
                    Expanded(
                      child: ListView.builder(
                        itemCount: value.carts.length,
                        itemBuilder: (ctx, index) {
                          final cart = value.carts[index];
                          return Card(
                            color: secondaryColor,
                            child: ListTile(
                              leading: CircleAvatar(
                                child: Image.asset(cart.food.imagePath),
                              ),
                              title: Text(
                                cart.food.name,
                                style: const TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold),
                              ),
                              subtitle: Text(
                                "\$${cart.price} x ${cart.quantity}",
                                style: TextStyle(
                                  color: Colors.grey[200],
                                ),
                              ),
                              trailing: Row(
                                mainAxisSize: MainAxisSize.min,
                                children: [
                                  Text(
                                    "${cart.price * cart.quantity}",
                                    style: const TextStyle(
                                      fontSize: 16,
                                      color: Colors.white,
                                    ),
                                  ),
                                  IconButton(
                                    onPressed: () => remove_cart(
                                      ctx: ctx,
                                      onPressed: () {
                                        value.removeFromCart(cart.id);
                                        Navigator.of(ctx).pop();
                                      },
                                    ),
                                    icon: const Icon(
                                      Icons.delete_forever_rounded,
                                      color: Colors.white,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          );
                        },
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(25),
                      child: MyButton(
                        text: "Pay now",
                        onTap: () {},
                      ),
                    )
                  ],
                ),
        ),
      ),
    );
  }
}
