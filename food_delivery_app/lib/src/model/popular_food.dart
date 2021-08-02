class Data {
  Data({
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

  static List<Data> DataList = <Data>[
    Data(
        name: "Fried Egg",
        imageUrl: "assets/images/popular_foods/ic_popular_food_1.png",
        rating: '4.9',
        numberOfRating: '200',
        price: '15.06',
        slug: "fried_egg"),
    Data(
        name: "Mixed Vegetable",
        imageUrl: "assets/images/popular_foods/ic_popular_food_2.png",
        rating: "4.9",
        numberOfRating: "100",
        price: "17.03",
        slug: ""),
    Data(
        name: "Salad With Chicken",
        imageUrl: "assets/images/popular_foods/ic_popular_food_3.png",
        rating: "4.0",
        numberOfRating: "50",
        price: "11.00",
        slug: ""
    ),


    Data(
        name: "Mixed Salad",
        imageUrl: "assets/images/popular_foods/ic_popular_food_4.png",
        rating: "4.00",
        numberOfRating: "100",
        price: "11.10",
        slug: ""
    ),

    Data(
        name: "Red meat,Salad",
        imageUrl: "assets/images/popular_foods/ic_popular_food_5.png",
        rating: "4.6",
        numberOfRating: "150",
        price: "12.00",
        slug: ""
    ),
    Data(
        name: "Mixed Salad",
        imageUrl: "assets/images/popular_foods/ic_popular_food_6.png",
        rating: "4.00",
        numberOfRating: "100",
        price: "11.10",
        slug: ""
    ),
    Data(
        name: "Potato,Meat fry",
        imageUrl: "assets/images/popular_foods/ic_popular_food_1.png",
        rating: "4.2",
        numberOfRating: "70",
        price: "23.0",
        slug: ""
    ),
    Data(
        name: "Fried Egg",
        imageUrl: "assets/images/popular_foods/ic_popular_food_2.png",
        rating: '4.9',
        numberOfRating: '200',
        price: '15.06',
        slug: "fried_egg"
    ),
    Data(
        name: "Red meat,Salad",
        imageUrl: "assets/images/popular_foods/ic_popular_food_3.png",
        rating: "4.6",
        numberOfRating: "150",
        price: "12.00",
        slug: ""
    ),
    Data(
        name: "Salad With Chicken",
        imageUrl: "assets/images/popular_foods/ic_popular_food_4.png",
        rating: "4.0",
        numberOfRating: "50",
        price: "11.00",
        slug: ""
    ),

  ];
}
