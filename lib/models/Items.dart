import 'package:flutter/material.dart';

class Items {
  final String title, description;
  final List<String> images;
  // final List<Color> colors;
  final double rating, price;
  final bool isFavourite, isPopular;
  final List<String> type;
  Items({
    required this.description,
    required this.images,
    // required this.colors,
    required this.price,
    this.isPopular = false,
    this.rating = 0.0,
    required this.title,
    this.isFavourite = false,
    required this.type,
  });
}

//demo items
List<Items> demoItems = [
  Items(
      description: "description",
      images: [
        "assets/images/cappuccino.png",
      ],
      price: 250,
      title: "cappuccino",
      type: ['Iced'],
      isFavourite: true,
      isPopular: true,
      rating: 5),
  Items(
      description: " Hot Tea",
      images: ["assets/images/tea.png"],
      price: 50,
      title: "Tea",
      type: ["Hot"],
      rating: 4.9,
      isFavourite: false,
      isPopular: true),
  Items(
      description:
          "Also known as `mocaccino`, `mochaccino`, or `mochachino`, mocha coffee is an espresso-based beverage that's unique from others such as latte, cappuccino, and macchiato, due to the presence of chocolate notes. Ironically, the origin of the word mocha doesn't have anything to do with chocolate or coffee and chocolate combos.",
      images: ["assets/images/mocha.png"],
      price: 100,
      title: "Mocha",
      type: ["Iced"],
      rating: 4.9,
      isFavourite: true,
      isPopular: true),
  Items(
      description: "Iced Coffee",
      images: ["assets/images/iced.png"],
      price: 140,
      title: "Coffee",
      type: ["Iced"],
      rating: 4.9,
      isFavourite: false,
      isPopular: true),
];
