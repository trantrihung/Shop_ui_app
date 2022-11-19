import 'package:flutter/material.dart';

class Category {
  Category({required this.icon, required this.title});

  final String icon, title;
}

List<Category> demo_categories = [
  Category(icon: "assets/icons/dress.svg", title: "Dress"),
  Category(icon: "assets/icons/shirt.svg", title: "Shirt"),
  Category(icon: "assets/icons/pants.svg", title: "Pants"),
  Category(icon: "assets/icons/Tshirt.svg", title: "Tshirt"),
];
