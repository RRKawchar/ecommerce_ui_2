
import 'package:flutter/material.dart';

class Product{
  final int id;
  final String title,description;
  final List<String> image;
  final List<Color> color;
  final double rating,price;
  final bool isFavorite,isPopular;


  Product({
    required this.id,
    required this.image,
    required this.color,
    this.rating=0.0,
    this.isFavorite=false,
    this.isPopular=false,
    required this.title,
    required this.price,
    required this.description

});

}

List<Product> demoProducts=[
  Product(
    id: 1,
    image: [
      "assets/images/ps4_console_white_1.png",
      "assets/images/ps4_console_white_2.png",
      "assets/images/ps4_console_white_3.png",
      "assets/images/ps4_console_white_4.png"
    ],
    color: [
      Color(0xFFF6625E),
      Color(0xFF836DB8),
      Color(0xFFDECB9C),
      Colors.white
    ],
    title: "Wireless Controller for PS4™",
    price: 66.99,
    description: description,
    rating: 4.8,
    isFavorite: true,
    isPopular: true

  ),
  Product(
    id: 2,
    image: [
      "assets/images/Image Popular Product 2.png",
    ],
    color: [
      Color(0xFFF6625E),
      Color(0xFF836DB8),
      Color(0xFFDECB9C),
      Colors.white,
    ],
    title: "Nike Sport White - Man Pant",
    price: 50.5,
    description: description,
    rating: 4.1,
    isPopular: true,
  ),
  Product(
    id: 3,
    image: [
      "assets/images/glap.png",
    ],
    color: [
      Color(0xFFF6625E),
      Color(0xFF836DB8),
      Color(0xFFDECB9C),
      Colors.white,
    ],
    title: "Gloves XC Omega - Polygon",
    price: 36.55,
    description: description,
    rating: 4.1,
    isFavorite: true,
    isPopular: true,
  ),
  Product(
    id: 4,
    image: [
      "assets/images/wireless headset.png",
    ],
    color: [
      Color(0xFFF6625E),
      Color(0xFF836DB8),
      Color(0xFFDECB9C),
      Colors.white,
    ],
    title: "Logitech Head",
    price: 20.20,
    description: description,
    rating: 4.1,
    isFavorite: true,
  ),

];

const String description =
    "Wireless Controller for PS4™ gives you what you want in your gaming from over precision control your games to sharing …";