import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:meal_app/meal_app/modal/ingredients_model.dart';

class IngredientScreen extends StatelessWidget {
  const IngredientScreen({super.key, required this.m, required this.image});
  // final CategoryController catcntrl = Get.put(CategoryController());
  final IngredientsModel m;
  final String image;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black.withOpacity(1),
      appBar: AppBar(
        title: const Text('ingredient'),
      ),
      body: Column(
        children: [
          Container(
            decoration: const BoxDecoration(
                gradient: LinearGradient(colors: [Colors.red, Colors.orange])),
            width: context.width,
            child: Image.network(image
                // catcntrl.product[0].categoryTypeModels[0].image),
                ),
          ),
          SizedBox(
            height: context.height / 22,
          ),
          const Text(
            "Ingredients",
            style: const TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
                color: Colors.orange),
          ),

          SizedBox(
            height: context.height / 31,
          ),

          Text(
            m.ingredients[0],
            // catcntrl.product[0].categoryTypeModels[0].ingredientsModel
            //     .ingredients[0],
            style: const TextStyle(color: Colors.white),
          ),
          Text(
            m.ingredients[0],
            // catcntrl.product[0].categoryTypeModels[0].ingredientsModel
            //     .ingredients[1],
            style: const TextStyle(color: Colors.white),
          ),
          Text(
            m.ingredients[1],

            // catcntrl.product[0].categoryTypeModels[0].ingredientsModel
            //     .ingredients[2],
            style: const TextStyle(color: Colors.white),
          ),
          SizedBox(
            height: context.height / 11,
          ),
          const Text(
            "Steps",
            style: const TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
                color: Colors.orange),
          ),
          SizedBox(
            height: context.height / 11,
          ),
          Text(
            m.steps[0],
            // catcntrl.product[0].categoryTypeModels[0].ingredientsModel
            //     .steps[0],
            style: const TextStyle(color: Colors.white),
          ),
          Text(
            m.steps[1],

            // catcntrl.product[0].categoryTypeModels[0].ingredientsModel
            //     .steps[1],
            style: const TextStyle(color: Colors.white),
          ),
          Text(
            m.steps[0],

            // catcntrl.product[0].categoryTypeModels[0].ingredientsModel
            //     .steps[2],
            style: const TextStyle(color: Colors.white),
          ),
          // Text(catcntrl.product[0].items[0].items[0].id.toString())
        ],
      ),
    );
  }
}
