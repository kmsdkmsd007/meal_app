import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:meal_app/meal_app/category_controller.dart';

class IngredientScreen2 extends StatelessWidget {
  IngredientScreen2({
    super.key,
  });
  final CategoryController catcntrl = Get.put(CategoryController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black.withOpacity(1),
      appBar: AppBar(
        actions: [
          IconButton(
              onPressed: () {
                showDialog(
                    context: context,
                    builder: (context) {
                      return const AlertDialog(
                        title: Text("Favorite"),
                        content:
                            Text('This item is added to your favourite list'),
                        contentTextStyle: TextStyle(color: Colors.black),
                      );
                    });
              },
              icon: const Icon(
                Icons.star,
                size: 28,
                color: Color.fromRGBO(68, 33, 33, 1),
              ))
        ],
        backgroundColor: Colors.lightBlue,
        title: const Text('Ingredient'),
      ),
      body: Column(
        children: [
          Container(
            padding: const EdgeInsets.all(2),
            decoration: BoxDecoration(borderRadius: BorderRadius.circular(28)),
            width: context.width,
            child: Image.network(
              catcntrl.product[catcntrl.currentCategoryModelIndex.value]
                  .categoryTypeModels[catcntrl.currentCatTypeIndex.value].image,
              width: context.width,
              fit: BoxFit.fill,
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
            height: context.height / 51,
          ),
          ...List.generate(
              catcntrl
                  .product[catcntrl.currentCategoryModelIndex.value]
                  .categoryTypeModels[catcntrl.currentCatTypeIndex.value]
                  .ingredientsModel
                  .ingredients
                  .length, (index) {
            var list = catcntrl
                .product[catcntrl.currentCategoryModelIndex.value]
                .categoryTypeModels[catcntrl.currentCatTypeIndex.value]
                .ingredientsModel
                .ingredients;
            return Text(
              list[index],
              // list[index],
              style: const TextStyle(color: Colors.white),
            );
          }),
          SizedBox(
            height: context.height / 31,
          ),
          const Text(
            "Steps",
            style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
                color: Colors.orange),
          ),
          SizedBox(
            height: context.height / 31,
          ),
          ...List.generate(
              catcntrl
                  .product[catcntrl.currentCategoryModelIndex.value]
                  .categoryTypeModels[catcntrl.currentCatTypeIndex.value]
                  .ingredientsModel
                  .steps
                  .length, (index) {
            var stepslist = catcntrl
                .product[catcntrl.currentCategoryModelIndex.value]
                .categoryTypeModels[catcntrl.currentCatTypeIndex.value]
                .ingredientsModel
                .steps;
            return Text(stepslist[index],
                style: const TextStyle(color: Colors.white));
          }),
          // Text(catcntrl.product[0].items[0].items[0].id.toString())
        ],
      ),
    );
  }
}
