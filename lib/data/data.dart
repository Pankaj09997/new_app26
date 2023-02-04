import 'package:flutter/foundation.dart';

class catalogmodel {
 
  static List<item> items = [
    item(
        id: 1,
        name: "T-Shirt",
        price: 19.99,
        category: "Clothing",
        image:
            "https://images.unsplash.com/photo-1521572163474-6864f9cf17ab?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1480&q=80.jpg",
        description: "A comfortable cotton T-shirt in a variety of colors."),
  ];
  item getById(int id) => items.firstWhere((element) => element.id == id,orElse: null);
    item getByPosition(int pos) =>items[pos];
}

class item {
  int id;
  final String name;
  final double price;

  final String category;
  final String image;
  final String description;

  item(
      {required this.id,
      required this.name,
      required this.price,
      required this.category,
      required this.image,
      required this.description}) {
    // TODO: implement item
    //   throw UnimplementedError();
  } //used curly braces to make it to the named contsructor
  factory item.fromMap(Map<String, dynamic> map) {
    //to convert map to string
    return item(
        id: map["id"],
        name: map["name"],
        price: map["price"],
        category: map["category"],
        image: map["image"],
        description: map["description"]);
  }
  toMap() => {
        //to convert the string data to map
        "id": id,
        "name": name,
        "price": price,
        "category": category,
        "image": image,
        "description": description,
      };
}
