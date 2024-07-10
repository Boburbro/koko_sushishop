class Food {
  String name;
  double price;
  String imagePath;
  String rating;
  String description;

  Food({
    required this.name,
    required this.price,
    required this.imagePath,
    required this.rating,
    required this.description,
  });
}

List<Food> foodMenu = [
  Food(
      name: 'Salmon Sushi',
      price: 21.00,
      imagePath: 'assets/salmon_sushi.png',
      rating: "4.9",
      description:
          "Salmon sushi is a popular Japanese dish that features fresh, raw salmon served atop vinegared rice. This delicacy is renowned for its rich, buttery flavor and smooth texture, often enhanced with a touch of soy sauce, wasabi, and pickled ginger. Salmon sushi can come in various forms, such as nigiri (a slice of salmon over a small bed of rice), sashimi (sliced salmon without rice), or rolls (salmon wrapped in rice and seaweed). It is appreciated for its simplicity, freshness, and the quality of the salmon used, making it a favorite among sushi enthusiasts worldwide."),
  Food(
      name: 'Tuna',
      price: 20.00,
      imagePath: 'assets/tuna.png',
      rating: "4.2",
      description:
          "Tuna sushi is a classic and beloved Japanese dish that showcases fresh, raw tuna served on vinegared rice. Known for its firm texture and rich, savory flavor, tuna sushi is often enjoyed with a dab of soy sauce, wasabi, and pickled ginger to enhance its taste. Tuna sushi comes in several varieties, including nigiri (a slice of tuna over a small bed of rice), sashimi (sliced tuna without rice), and rolls (tuna wrapped in rice and seaweed). The quality and freshness of the tuna are paramount, making it a highly prized choice among sushi aficionados."),
  Food(
    name: 'Salmon Eggs',
    price: 21.00,
    imagePath: 'assets/salmon_eggs.png',
    rating: "4.2",
    description:
        "Salmon eggs, known as ikura in Japanese, are a popular ingredient in sushi and Japanese cuisine. These vibrant orange roe are prized for their briny, rich flavor and distinctive pop when bitten into. Ikura sushi typically features the salmon eggs served atop a small bed of vinegared rice and wrapped in a strip of seaweed, sometimes garnished with a touch of wasabi or shiso leaf. The combination of the delicate, salty eggs and the slightly sweet sushi rice creates a unique and luxurious taste experience, making ikura a favorite choice for those who enjoy seafood.",
  ),
  Food(
      name: "Udon",
      price: 15.41,
      imagePath: 'assets/udon.png',
      rating: '4.5',
      description:
          "One of the three main noodle varieties eaten in Japan; udon noodles are thick, chewy, and traditionally made from wheat flour and brine water.\n\nUdon can be served in a number of different ways (mixed into stir fries, added to hot pots, served cold with a tsuyu or tentsuyu soup base on the side for dipping), but are most commonly used in noodle soups, where they are served in a savoury soup broth with different garnishes.\n\nSome of the most common udon noodle soup dishes include kitsune udon (‘fox udon’, topped with aburaage fried tofu), tempura udon (topped with tempura battered seafood and vegetables), and chikara udon (‘power udon’, topped with grilled mochi rice cakes)."),
  Food(
      name: "Tofu",
      price: 35.24,
      imagePath: "assets/tofu.png",
      rating: '5.0',
      description:
          'Although tofu is mainly thought of in Western countries as a health food or vegetarian alternative, in Southeast Asian countries like Japan, tofu (particularly silken tofu) is enjoyed by everybody and is a common part of the traditional diet.\n\nTo answer the question ‘what is tofu?’, it is soy milk that has been coagulated, with the resulting curds being pressed into blocks. These blocks come in differing levels of firmness, and can be eaten uncooked (perhaps with a couple of savoury garnishes), boiled in hot pots, or fried into tasty pieces of aburaage and used as a garnish.'),
];
