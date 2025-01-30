import 'package:flutter/material.dart';

class Product {
  String title;
  String description;
  String image;
  int review;
  String seller;
  double price;
  List<Color> colors;
  String category;
  double rate;
  int quantity;

  Product({
    required this.title,
    required this.description,
    required this.image,
    required this.review,
    required this.seller,
    required this.price,
    required this.colors,
    required this.category,
    required this.rate,
    required this.quantity,
  });
}
final List<Product> products = [
    Product(title: 'Smart Phone',
        description: 'description',
        image: 'assets/freepik__the-style-is-candid-image-photography-with-natural__30021.jpg',
        review: 4,
        seller: 'seller',
        price: 120,
        colors: [Colors.black,Colors.blue,Colors.orange],
        category: 'Electronics',
        rate: 4,
        quantity: 5),
  Product(title: 'Smart Phone',
      description: 'description',
      image: 'assets/freepik__the-style-is-candid-image-photography-with-natural__30021.jpg',
      review: 4,
      seller: 'seller',
      price: 120,
      colors: [Colors.black,Colors.blue,Colors.orange],
      category: 'Electronics',
      rate: 4,
      quantity: 5),
  Product(title: 'Smart Phone',
      description: 'description',
      image: 'assets/freepik__the-style-is-candid-image-photography-with-natural__30021.jpg',
      review: 4,
      seller: 'seller',
      price: 120,
      colors: [Colors.black,Colors.blue,Colors.orange],
      category: 'Electronics',
      rate: 4,
      quantity: 5),
  Product(title: 'Smart Phone',
      description: 'description',
      image: 'assets/freepik__the-style-is-candid-image-photography-with-natural__30021.jpg',
      review: 4,
      seller: 'seller',
      price: 120,
      colors: [Colors.black,Colors.blue,Colors.orange],
      category: 'Electronics',
      rate: 4,
      quantity: 5),
];