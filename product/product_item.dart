class GroceryItem {
  String name;
  String description;
  double price;
  String imagePath;
  int itemNumbers;

  GroceryItem(
      {required this.name,
      required this.description,
      required this.price,
      required this.imagePath,
      required this.itemNumbers}) {
    assert(name != null);
    assert(description != null);
    assert(price != null);
    assert(imagePath != null);
  }
}

var vivaMallItems = [
  GroceryItem(
      name: "Banana",
      description: "1kg",
      price: 400.00,
      imagePath: "assets/images/grocery_images/banana.png",
      itemNumbers: 100),
  GroceryItem(
    name: "RedApple",
    description: "1Kg",
    price: 600.00,
    imagePath: "assets/images/grocery_images/apple.png",
    itemNumbers: 80,
  ),
  GroceryItem(
      name: "Ginger",
      description: "250g",
      price: 400.00,
      imagePath: "assets/images/grocery_images/ginger.png",
      itemNumbers: 90),
  GroceryItem(
      name: "Colorful pepper",
      description: "500g",
      price: 300.00,
      imagePath: "assets/images/grocery_images/color_pepper.png",
      itemNumbers: 90),
  GroceryItem(
      name: "Meat",
      description: "250gm",
      price: 487.50,
      imagePath: "assets/images/grocery_images/beef.png",
      itemNumbers: 85),
  GroceryItem(
      name: "Chikken",
      description: "250gm",
      price: 500.00,
      imagePath: "assets/images/grocery_images/chicken.png",
      itemNumbers: 60),
  GroceryItem(
      name: "Coca Cola",
      description: "1L",
      price: 95.00,
      imagePath: "assets/images/grocery_images/cocacola.png",
      itemNumbers: 100),
  GroceryItem(
      name: "Nutella Chocolate",
      description: "600g",
      price: 1150,
      imagePath: "assets/images/grocery_images/nutella.png",
      itemNumbers: 200),
  GroceryItem(
      name: "coca cola can",
      description: "can 33cl",
      price: 80,
      imagePath: "assets/images/beverages_images/coca_cola.png",
      itemNumbers: 200),
  GroceryItem(
      name: "Diet coke",
      description: "can 33cl",
      price: 80,
      imagePath: "assets/images/beverages_images/diet_coke.png",
      itemNumbers: 200),
  GroceryItem(
      name: "Sprite",
      description: "can 33cl",
      price: 70,
      imagePath: "assets/images/beverages_images/sprite.png",
      itemNumbers: 200),
  GroceryItem(
      name: "Pepsi",
      description: "can 33cl",
      price: 75,
      imagePath: "assets/images/beverages_images/pepsi.png",
      itemNumbers: 200),
  GroceryItem(
      name: "Rouiba",
      description: "2L",
      price: 170,
      imagePath: "assets/images/beverages_images/rouiba.png",
      itemNumbers: 200),
  GroceryItem(
      name: "Toudja",
      description: "2L orange",
      price: 280,
      imagePath: "assets/images/beverages_images/touja.png",
      itemNumbers: 200),
];
// ignore: non_constant_identifier_names
var NewArrivals = [
  vivaMallItems[0],
  vivaMallItems[1],
  vivaMallItems[3],
  vivaMallItems[5],
];
// ignore: non_constant_identifier_names
var RelatedProducts = [
  vivaMallItems[0],
  vivaMallItems[1],
  vivaMallItems[2],
  vivaMallItems[5],
];
// ignore: non_constant_identifier_names
var Beverages = [
  vivaMallItems[8],
  vivaMallItems[9],
  vivaMallItems[10],
  vivaMallItems[11],
  vivaMallItems[12],
  vivaMallItems[13],
];
