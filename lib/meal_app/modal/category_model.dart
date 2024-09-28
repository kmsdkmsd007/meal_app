import 'package:flutter/material.dart';
import 'package:meal_app/meal_app/modal/category_type_model.dart';

class CategoryModel {
  final int id;
  final List<CategoryTypeModel> categoryTypeModels;
  final Color color;
  final String name;
  CategoryModel(
      {required this.color,
      this.categoryTypeModels = const [],
      required this.id,
      required this.name});
}
