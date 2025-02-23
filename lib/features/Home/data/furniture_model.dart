import 'package:flutter/material.dart';

class FurnitureModel {
  final String id;
  final String name;
  final String imageUrl;
  final double price;
  final double oldPrice;
  final double discount;
  final double rating;
  final int reviews;
  final List<Color> colors;
  final String description;
  int quantity = 1;

  FurnitureModel({
    required this.id,
    required this.name,
    required this.imageUrl,
    required this.price,
    required this.oldPrice,
    required this.discount,
    required this.rating,
    required this.reviews,
    required this.colors,
    required this.description,
  });

  void increaseProduct() => quantity++;

  void decreasingProduct() {
    if (quantity > 1) {
      quantity--;
    }
  }

  /// إنشاء كائن من JSON
  factory FurnitureModel.fromJson(Map<String, dynamic> json) {
    return FurnitureModel(
      id: json['id'] ?? "",
      name: json['name'] ?? "",
      imageUrl: json['imageUrl'] ?? "",
      price: json['price'].toDouble() ?? 0.0,
      oldPrice: json['oldPrice'].toDouble() ?? 0.0,
      discount: json['discount'].toDouble() ?? 0.0,
      rating: json['rating'].toDouble() ?? 0.0,
      reviews: json['reviews'] ?? 0,
      colors: (json['colors'] as List)
          .map((color) => Color(int.parse(color)))
          .toList(),
      description: json['description'] ?? "",
    )..quantity = json['quantity'] ?? 1;
  }

  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'name': name,
      'imageUrl': imageUrl,
      'price': price,
      'oldPrice': oldPrice,
      'discount': discount,
      'rating': rating,
      'reviews': reviews,
      'quantity': quantity,
      'colors': colors.map((color) => color.value.toString()).toList(),
      'description': description,
    };
  }
}

List<FurnitureModel> productList = [
  FurnitureModel(
    id: "ket2ON1UP80U8LVMsXl7",
    name: "EKERÖ",
    price: 230.00,
    oldPrice: 512.58,
    imageUrl:
        "https://raw.githubusercontent.com/RandEthar/Furniture-application/refs/heads/main/asset/images/item1.png",
    rating: 4.9,
    reviews: 256,
    description:
        "A minimalist chair with a reversible back cushion provides soft support for your back and has two sides to wear.",
    discount: 45,
    colors: [Colors.black, Colors.brown, Colors.blue],
  ),];
//   FurnitureModel(
//     id: "y24CkO0dpppO2VJfidsx",
//     name: "STRANDMON",
//     price: 274.13,
//     oldPrice: 856.60,
//     imageUrl:
//         "https://raw.githubusercontent.com/RandEthar/Furniture-application/refs/heads/main/asset/images/item2.png",
//     rating: 4.8,
//     reviews: 128,
//     description:
//         "A timeless high-back armchair offering exceptional comfort and classic style, perfect for reading or relaxing.",
//     discount: 45,
//     colors: [Colors.black, Colors.brown, Colors.blue],
//   ),
//   FurnitureModel(
//     id: "wmhQIsmIXRYVo1y4VMSo",
//     name: "PLATTLÄNS",
//     price: 24.99,
//     oldPrice: 69.99,
//     imageUrl:
//         "https://raw.githubusercontent.com/RandEthar/Furniture-application/refs/heads/main/asset/images/item3.png",
//     rating: 4.9,
//     reviews: 256,
//     description:
//         "A modern and compact side table that fits seamlessly into any space, providing both style and functionality.",
//     discount: 45,
//     colors: [Colors.black, Colors.brown, Colors.blue],
//   ),
//   FurnitureModel(
//     id: "LmsATb1FVWSQWgPVcs3j",
//     name: "MALM",
//     price: 50.99,
//     oldPrice: 69.99,
//     imageUrl:
//         "https://raw.githubusercontent.com/RandEthar/Furniture-application/refs/heads/main/asset/images/item4.png",
//     rating: 4.9,
//     reviews: 256,
//     description:
//         "A sleek and practical bedside table with a spacious drawer, offering easy storage and a minimalist design.",
//     discount: 45,
//     colors: [Colors.black, Colors.brown, Colors.blue],
//   ),
//   FurnitureModel(
//     id: "lxks1GlOy3Pp1hBxTyzH",
//     name: "EKERÖ",
//     price: 230.00,
//     oldPrice: 512.58,
//     imageUrl:
//         "https://raw.githubusercontent.com/RandEthar/Furniture-application/refs/heads/main/asset/images/item7.png",
//     rating: 4.9,
//     reviews: 256,
//     description:
//         "A minimalist chair with a reversible back cushion provides soft support for your back and has two sides to wear.",
//     discount: 45,
//     colors: [Colors.black, Colors.brown, Colors.blue],
//   ),
//   FurnitureModel(
//     id: "oObkCWEWoo4hnyy6uUaF",
//     name: "MALM",
//     price: 50.99,
//     oldPrice: 69.99,
//     imageUrl:
//         "https://raw.githubusercontent.com/RandEthar/Furniture-application/refs/heads/main/asset/images/item6.png",
//     rating: 4.9,
//     reviews: 256,
//     description:
//         "A sleek and practical bedside table with a spacious drawer, offering easy storage and a minimalist design.",
//     discount: 45,
//     colors: [Colors.black, Colors.brown, Colors.blue],
//   ),
//   FurnitureModel(
//     id: "7",
//     name: "PLATTLÄNS",
//     price: 24.99,
//     oldPrice: 69.99,
//     imageUrl: "asset/images/item5.png",
//     rating: 4.9,
//     reviews: 256,
//     description:
//         "A modern and compact side table that fits seamlessly into any space, providing both style and functionality.",
//     discount: 45,
//     colors: [Colors.black, Colors.brown, Colors.blue],
//   ),
// ];
