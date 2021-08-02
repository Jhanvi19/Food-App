class Top {
  Top({
    this.name,
    this.imageUrl,
    this.slug,
  });

  String name = " ";
  String imageUrl;
  String slug = "";

  static List<Top> DataList = <Top>[
    Top(
        name: "Burger",
        imageUrl: "assets/images/topmenu/ic_burger.png",
        slug: ""),
    Top(
        name: "Sushi",
        imageUrl: "assets/images/topmenu/ic_sushi.png",
        slug: ""),
    Top(
        name: "Pizza",
        imageUrl: "assets/images/topmenu/ic_pizza.png",
        slug: ""),
    Top(name: "Cake", imageUrl: "assets/images/topmenu/ic_cake.png", slug: ""),
    Top(
        name: "Ice Cream",
        imageUrl: "assets/images/topmenu/ic_ice_cream.png",
        slug: ""),
    Top(
        name: "Soft Drink",
        imageUrl: "assets/images/topmenu/ic_soft_drink.png",
        slug: ""),
    Top(
        name: "Burger",
        imageUrl: "assets/images/topmenu/ic_burger.png",
        slug: ""),
    Top(
        name: "Sushi",
        imageUrl: "assets/images/topmenu/ic_sushi.png",
        slug: ""),
  ];
}
