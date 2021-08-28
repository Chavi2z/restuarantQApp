import 'package:flutter/material.dart';

class Product {
  final int id;
  final String title, description;
  final List<String> images;
  final bool isFavourite, isPopular;

  Product({
    @required this.id,
    @required this.images,
    this.isFavourite = false,
    this.isPopular = false,
    @required this.title,
    @required this.description,
  });
}

// Our demo Products

List<Product> demoProducts = [
  Product(
    id: 1,
    images: [
      "assets/images/burger.png",
    ],
    title: "McDonalds",
    description: description,
    isFavourite: true,
    isPopular: true,
  ),
  Product(
    id: 2,
    images: [
      "assets/images/burger.png",
    ],
    title: "McDonalds",
    description: description,
    isPopular: true,
  ),
  Product(
    id: 3,
    images: [
      "assets/images/burger.png",
    ],
    title: "McDonalds",
    description: description,
    isFavourite: true,
    isPopular: true,
  ),
  Product(
    id: 4,
    images: [
      "assets/images/burger.png",
    ],
    title: "McDonalds",
    description: description,
    isFavourite: true,
  ),
];

const String description =
    "Wireless Controller for PS4™ gives you what you want in your gaming from over precision control your games to sharing …";
