import 'package:flutter/material.dart';

class PopularDishesModel {
  String title;
  String imagePath;
  Gradient gradientColor;

  PopularDishesModel({
    required this.title,
    required this.imagePath,
    required this.gradientColor,
  });

  static List<PopularDishesModel> getDishes() {
    return [
      PopularDishesModel(
        title: 'Chocolate Cake',
        imagePath: 'assets/cake.png',
        gradientColor: LinearGradient(
          colors: [Colors.brown, Colors.orange],
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
        ),
      ),
      PopularDishesModel(
        title: 'Strawberry Cake',
        imagePath: 'assets/cake.png',
        gradientColor: LinearGradient(
          colors: [Colors.red, Colors.pink],
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
        ),
      ),
      PopularDishesModel(
        title: 'Vanilla Cake',
        imagePath: 'assets/cake.png',
        gradientColor: LinearGradient(
          colors: [Colors.yellow, Colors.white],
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
        ),
      ),
      PopularDishesModel(
        title: 'Blueberry Cake',
        imagePath: 'assets/cake.png',
        gradientColor: LinearGradient(
          colors: [Colors.blue, Colors.purple],
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
        ),
      ),
      PopularDishesModel(
        title: 'Lemon Cake',
        imagePath: 'assets/cake.png',
        gradientColor: LinearGradient(
          colors: [Colors.green, Colors.yellow],
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
        ),
      ),
    ];
  }
}
