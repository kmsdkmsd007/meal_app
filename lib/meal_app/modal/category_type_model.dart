import 'package:meal_app/meal_app/modal/ingredients_model.dart';

class CategoryTypeModel {
  final int id;
  final String name;
  final Duration duration;
  final String type;
  final String image;
  final IngredientsModel ingredientsModel;

  final String priceType;
  CategoryTypeModel(
      {required this.duration,
      required this.ingredientsModel,
      required this.id,
      required this.image,
      required this.name,
      required this.priceType,
      required this.type});
}
