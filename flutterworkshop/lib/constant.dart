
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

const blueColor = Color(0xFF9cd1de);
const greenColor = Color(0xFFb0e9a6);
const yellowColor = Color(0xFFffdb77);
const redColor = Color(0xFFffa4a4);
const titleColor = Color(0xFF606081);
const textColor = Color(0xFF9da2b5);
const greenBorderColor = Color(0xFF8cdf7d);

const paddingNum = 16.0;

TextStyle titleTextStyle = TextStyle(
  color: titleColor,
  fontSize: 30,
  fontWeight: FontWeight.w900
);
TextStyle textStyle = TextStyle(
  color: textColor,
  fontSize: 15,
  fontWeight: FontWeight.w900
);
ThemeData appTheme = ThemeData(
  useMaterial3: true,
  scaffoldBackgroundColor: blueColor,
  textTheme: GoogleFonts.ptSansTextTheme(),

);


List<Map<String, dynamic>> allFruit = [
  {
    "fruitName": "Apple",
    "image": "assets/images/apple.png",
    "description": "A juicy red apple",
    "price": 2.99,
  },
  {
    "fruitName": "Grape",
    "image": "assets/images/grape.png",
    "description": "Sweet and seedless grapes",
    "price": 4.49,
  },
  {
    "fruitName": "Lemon",
    "image": "assets/images/lemon.png",
    "description": "Tart and fresh lemon",
    "price": 1.75,
  },
  {
    "fruitName": "Lime",
    "image": "assets/images/lime.png",
    "description": "Zesty green lime",
    "price": 1.59,
  },
  {
    "fruitName": "Orange",
    "image": "assets/images/orange.png",
    "description": "Bright and tangy orange",
    "price": 3.25,
  },
  {
    "fruitName": "Pineapple",
    "image": "assets/images/pineapple.png",
    "description": "Tropical and juicy pineapple",
    "price": 5.89,
  },
  {
    "fruitName": "Strawberry",
    "image": "assets/images/strawberry.png",
    "description": "Fresh and ripe strawberries",
    "price": 3.69,
  },
];
