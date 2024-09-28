import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:meal_app/constants/image_links.dart';
import 'package:meal_app/meal_app/modal/category_model.dart';
import 'package:meal_app/meal_app/modal/category_type_model.dart';
import 'package:meal_app/meal_app/modal/ingredients_model.dart';

class CategoryController extends GetxController {
  var currentCategoryModelIndex = 0.obs;
  var currentCatTypeIndex = 0.obs;

  updateCategoryModelIndex(i) {
    currentCategoryModelIndex.value = i;
  }

  updateCatTypeIndex(i) {
    currentCatTypeIndex.value = i;
  }

  var product = <CategoryModel>[
    CategoryModel(
        id: 1,
        name: 'Asian',
        color: Colors.purple,
        categoryTypeModels: [
          CategoryTypeModel(
            id: 1,
            duration: Duration(minutes: 44),
            ingredientsModel: IngredientsModel(
                id: 1,
                ingredients: ['namak', "chawal", "pani"],
                steps: ["a:dfghjk", "b:qwertyui", "c:12345678"]),
            image: ImageLinks.link1,
            name: 'usman khan',
            priceType: 'mehnga',
            type: 'Simple',
          ),
          CategoryTypeModel(
            id: 2,
            duration: Duration(minutes: 54),
            ingredientsModel: IngredientsModel(
                id: 1,
                ingredients: ['Chicken ', "Toast", "pani"],
                steps: ["a:dfghjk", "b:qwertyui", "c:12345678"]),
            image: ImageLinks.link2,
            name: 'khan',
            priceType: 'unavialble',
            type: 'Simple',
          ),
          CategoryTypeModel(
            id: 1,
            duration: Duration(minutes: 44),
            ingredientsModel: IngredientsModel(
                id: 1,
                ingredients: ['namak', "chawal", "pani"],
                steps: ["a:dfghjk", "b:qwertyui", "c:12345678"]),
            image: ImageLinks.link3,
            name: 'usman khan',
            priceType: 'mehnga',
            type: 'Simple',
          ),
          CategoryTypeModel(
            id: 1,
            duration: Duration(minutes: 44),
            ingredientsModel: IngredientsModel(
                id: 1,
                ingredients: ['namak', "chawal", "pani"],
                steps: ["a:dfghjk", "b:qwertyui", "c:12345678"]),
            image: ImageLinks.link4,
            name: 'usman khan',
            priceType: 'mehnga',
            type: 'Simple',
          ),
        ]),
    CategoryModel(
        id: 2,
        name: 'Italian',
        color: Colors.red,
        categoryTypeModels: [
          CategoryTypeModel(
              duration: Duration(minutes: 11),
              ingredientsModel: IngredientsModel(id: 22, ingredients: [
                'pakeai',
                'Roller'
              ], steps: [
                'eat ',
                "Drink",
              ]),
              id: 33,
              image: ImageLinks.link1,
              name: 'Tarkol',
              priceType: 'high',
              type: '\$'),
          CategoryTypeModel(
              duration: Duration(minutes: 11),
              ingredientsModel: IngredientsModel(id: 22, ingredients: [
                'pakOrai',
                'Roller'
              ], steps: [
                'eat ',
                "Drink",
              ]),
              id: 33,
              image: ImageLinks.link2,
              name: 'Tarkol',
              priceType: 'high',
              type: '\$'),
          CategoryTypeModel(
              duration: Duration(minutes: 11),
              ingredientsModel: IngredientsModel(id: 22, ingredients: [
                'karai',
                'Roller'
              ], steps: [
                'eat ',
                "Drink",
              ]),
              id: 23,
              image: ImageLinks.link1,
              name: 'Tarkol',
              priceType: 'high',
              type: '\$'),
        ]),
    CategoryModel(
        id: 3,
        name: "Quick & Easy",
        color: Colors.teal,
        categoryTypeModels: [
          CategoryTypeModel(
              duration: Duration(minutes: 11),
              ingredientsModel: IngredientsModel(id: 22, ingredients: [
                'pakeai',
                'Roller'
              ], steps: [
                'eat ',
                "Drink",
              ]),
              id: 33,
              image: ImageLinks.link3,
              name: 'Tarkol',
              priceType: 'high',
              type: '\$'),
          CategoryTypeModel(
              duration: Duration(minutes: 11),
              ingredientsModel: IngredientsModel(id: 22, ingredients: [
                'pakeai',
                'Roller'
              ], steps: [
                'eat ',
                "Drink",
              ]),
              id: 33,
              image: ImageLinks.link4,
              name: 'Tarkol',
              priceType: 'high',
              type: '\$'),
        ]),
    CategoryModel(
        id: 4,
        name: 'HumBurger',
        color: Colors.orange,
        categoryTypeModels: [
          CategoryTypeModel(
              duration: Duration(minutes: 11),
              ingredientsModel: IngredientsModel(id: 22, ingredients: [
                'pakeai',
                'Roller'
              ], steps: [
                'eat ',
                "Drink",
              ]),
              id: 33,
              image: ImageLinks.link4,
              name: 'Tarkol',
              priceType: 'high',
              type: '\$'),
          CategoryTypeModel(
              duration: Duration(minutes: 11),
              ingredientsModel: IngredientsModel(id: 22, ingredients: [
                'pakeai',
                'Roller'
              ], steps: [
                'eat ',
                "Drink",
              ]),
              id: 33,
              image: ImageLinks.link2,
              name: 'Tarkol',
              priceType: 'high',
              type: '\$'),
        ]),
    CategoryModel(
        id: 5,
        name: 'Exotic',
        color: Colors.blue,
        categoryTypeModels: [
          CategoryTypeModel(
              duration: Duration(minutes: 11),
              ingredientsModel: IngredientsModel(id: 22, ingredients: [
                'pakeai',
                'Roller'
              ], steps: [
                'eat ',
                "Drink",
              ]),
              id: 33,
              image: ImageLinks.link1,
              name: 'Tarkol',
              priceType: 'high',
              type: '\$'),
          CategoryTypeModel(
              duration: Duration(minutes: 11),
              ingredientsModel: IngredientsModel(id: 22, ingredients: [
                'pakeai',
                'Roller'
              ], steps: [
                'eat ',
                "Drink",
              ]),
              id: 33,
              image: ImageLinks.link3,
              name: 'Tarkol',
              priceType: 'high',
              type: '\$'),
        ]),
    CategoryModel(
        id: 6,
        name: 'Brackfast',
        color: Colors.green,
        categoryTypeModels: [
          CategoryTypeModel(
              duration: Duration(minutes: 11),
              ingredientsModel: IngredientsModel(id: 22, ingredients: [
                'pakeai2222',
                'Roller'
              ], steps: [
                'eat 1234',
                "Drink",
              ]),
              id: 33,
              image: ImageLinks.link4,
              name: 'Tarkol kkk',
              priceType: 'high kkkk',
              type: 'Simple'),
          CategoryTypeModel(
              duration: Duration(minutes: 11),
              ingredientsModel: IngredientsModel(id: 22, ingredients: [
                'pakeai',
                'Roller'
              ], steps: [
                'eat ',
                "Drink",
              ]),
              id: 33,
              image: ImageLinks.link1,
              name: 'Tarkol',
              priceType: 'high',
              type: '\$'),
        ]),
    CategoryModel(
        id: 6,
        name: 'Summer',
        color: Colors.lightBlue,
        categoryTypeModels: [
          CategoryTypeModel(
              duration: Duration(minutes: 11),
              ingredientsModel: IngredientsModel(id: 22, ingredients: [
                'pakeai',
                'Roller'
              ], steps: [
                'eat ',
                "Drink",
              ]),
              id: 33,
              image: ImageLinks.link2,
              name: 'Tarkol',
              priceType: 'high',
              type: '\$'),
          CategoryTypeModel(
              duration: Duration(minutes: 11),
              ingredientsModel: IngredientsModel(id: 22, ingredients: [
                'pakeai',
                'Roller'
              ], steps: [
                'eat ',
                "Drink",
              ]),
              id: 33,
              image: ImageLinks.link1,
              name: 'Tarkol',
              priceType: 'high',
              type: '\$'),
        ]),
    CategoryModel(
        id: 6,
        name: 'French',
        color: Colors.pink,
        categoryTypeModels: [
          CategoryTypeModel(
              duration: Duration(minutes: 11),
              ingredientsModel: IngredientsModel(id: 22, ingredients: [
                'pakeai',
                'Roller'
              ], steps: [
                'eat ',
                "Drink",
              ]),
              id: 33,
              image: ImageLinks.link3,
              name: 'Tarkol',
              priceType: 'high',
              type: '\$'),
          CategoryTypeModel(
              duration: Duration(minutes: 11),
              ingredientsModel: IngredientsModel(id: 22, ingredients: [
                'pakeai',
                'Roller'
              ], steps: [
                'eat ',
                "Drink",
              ]),
              id: 33,
              image: ImageLinks.link4,
              name: 'Tarkol',
              priceType: 'high',
              type: '\$'),
        ]),
  ].obs;
}
