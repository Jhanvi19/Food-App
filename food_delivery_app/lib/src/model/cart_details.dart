class Cart {
  Cart({
    this.productName,
    this.productPrice,
    this.productImage,
    this.productCartQuantity,
  });

  String productName = " ";
  String productImage;
  String productPrice = "";
  String productCartQuantity = "";


  static List<Cart> DataList = <Cart>[
    Cart(
        productName: "Grilled Salmon",
        productPrice: "\$96.00",
        productImage: "assets/images/popular_foods/ic_popular_food_1.png",
        productCartQuantity: "2"),
    Cart(
        productName: "Meat vegetable",
        productPrice: "\$65.08",
        productImage: "assets/images/popular_foods/ic_popular_food_4.png",
        productCartQuantity: "5"),

  ];
}
