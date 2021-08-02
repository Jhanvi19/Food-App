class Best {
  Best({
    this.name,
    this.price,
    this.rating,
    this.numberOfRating,
    this.imageUrl,
    this.slug,
  });

  String name = " ";
  String numberOfRating = " ";
  String rating = " ";
  String price = " ";
  String slug = "";
  String imageUrl;

  static List<Best> DataList = <Best>[
    Best(
      name: "Fried Egg",
      imageUrl: "assets/images/bestfood/ic_best_food_8.jpeg",
      rating: '4.9',
      numberOfRating: '200',
      price: '15.06',
      slug: "fried_egg",
    ),
    Best(
      name: "Mixed vegetable",
      imageUrl: "assets/images/bestfood/ic_best_food_9.jpeg",
      rating: "4.9",
      numberOfRating: "100",
      price: "17.03",
      slug: "",
    ),
    Best(
      name: "Salad with chicken meat",
      imageUrl: "assets/images/bestfood/ic_best_food_10.jpeg",
      rating: "4.0",
      numberOfRating: "50",
      price: "11.00",
      slug: "",
    ),
    Best(
      name: "New mixed salad",
      imageUrl: "assets/images/bestfood/ic_best_food_2.jpeg",
      rating: "4.00",
      numberOfRating: "100",
      price: "11.10",
      slug: "",
    ),
    Best(
        name: "Fried Egg",
        imageUrl: "assets/images/bestfood/ic_best_food_8.jpeg",
        rating: '4.9',
        numberOfRating: '200',
        price: '15.06',
        slug: "fried_egg"),
    Best(
        name: "Fried Egg",
        imageUrl: "assets/images/bestfood/ic_best_food_4.jpeg",
        rating: '4.9',
        numberOfRating: '200',
        price: '15.06',
        slug: "fried_egg"),
    Best(
        name: "Potato with meat fry",
        imageUrl: "assets/images/bestfood/ic_best_food_3.jpeg",
        rating: "4.2",
        numberOfRating: "70",
        price: "23.0",
        slug: ""),
    Best(
        name: "Red meat with salad",
        imageUrl: "assets/images/bestfood/ic_best_food_5.jpeg",
        rating: "4.6",
        numberOfRating: "150",
        price: "12.00",
        slug: ""),
    Best(
        name: "Red meat with salad",
        imageUrl: "assets/images/bestfood/ic_best_food_6.jpeg",
        rating: "4.6",
        numberOfRating: "150",
        price: "12.00",
        slug: ""),
    Best(
        name: "Red meat with salad",
        imageUrl: "assets/images/bestfood/ic_best_food_7.jpeg",
        rating: "4.6",
        numberOfRating: "150",
        price: "12.00",
        slug: ""),
  ];
}
