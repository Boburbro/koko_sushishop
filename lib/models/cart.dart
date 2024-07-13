import 'food.dart';

class Cart {
  String id;
  Food food;
  int quantity;
  double price;

  Cart({
    required this.id,
    required this.food,
    required this.quantity,
    required this.price,
  });
}
