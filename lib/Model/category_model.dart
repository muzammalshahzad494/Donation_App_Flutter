import 'package:flutter/material.dart';

class CategoryModel {
  String name;
  String iconPath;
  Color backgroundColor;

  CategoryModel({
    required this.name,
    required this.iconPath,
    required this.backgroundColor,
  });

  static List<CategoryModel> getCategories() {
    return [
      CategoryModel(
        name: 'Electronics',
        iconPath: 'assets/feather.jpg',
        backgroundColor: Colors.blueAccent,
      ),
      CategoryModel(
        name: 'Fashion',
        iconPath: 'assets/feather.jpg',
        backgroundColor: Colors.pinkAccent,
      ),
      CategoryModel(
        name: 'Groceries',
        iconPath: 'assets/feather.jpg',
        backgroundColor: Colors.greenAccent,
      ),
      CategoryModel(
        name: 'Home & Living',
        iconPath: 'assets/feather.jpg',
        backgroundColor: Colors.orangeAccent,
      ),
      CategoryModel(
        name: 'Books',
        iconPath: 'assets/feather.jpg',
        backgroundColor: Colors.purpleAccent,
      ),
    ];
  }
}





class DietModel {
  String title;
  String iconPath;
  String duration;
  String level;
  Color color;
  bool isSelected;

  DietModel({
    required this.title,
    required this.iconPath,
    required this.duration,
    required this.level,
    required this.color,
    this.isSelected = false, // Default value is false
  });

  static List<DietModel> getDiets() {
    return [
      DietModel(
        title: 'Keto Diet',
        iconPath: 'assets/cake.png',
        duration: '30 Days',
        level: 'Intermediate',
        color: Colors.green,
      ),
      DietModel(
        title: 'Mediterranean Diet',
        iconPath: 'assets/cake.png',
        duration: '45 Days',
        level: 'Beginner',
        color: Colors.blue,
      ),
      DietModel(
        title: 'Paleo Diet',
        iconPath: 'assets/cake.png',
        duration: '60 Days',
        level: 'Advanced',
        color: Colors.red,
      ),
      DietModel(
        title: 'Vegan Diet',
        iconPath: 'assets/cake.png',
        duration: '90 Days',
        level: 'Intermediate',
        color: Colors.orange,
      ),
      DietModel(
        title: 'Low-Carb Diet',
        iconPath: 'assets/cake.png',
        duration: '30 Days',
        level: 'Beginner',
        color: Colors.purple,
      ),
    ];
  }
}