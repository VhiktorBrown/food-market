import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Category{
  String text;
  IconData icon;
  Color color;

  Category({
    required this.text,
    required this.icon,
    required this.color
});


}

List<Category> categories = [

  Category(
      text: "Vegan",
      icon: Icons.fastfood,
      color: Colors.green),
  Category(
      text: "Coffee",
      icon: Icons.coffee,
      color: Colors.brown),
  Category(
      text: "Ice cream",
      icon: Icons.icecream,
      color: Colors.orange),
  Category(
      text: "Fast food",
      icon: Icons.fastfood,
      color: Colors.pink),
];