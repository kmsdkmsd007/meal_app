import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:meal_app/meal_app/category_controller.dart';
import 'package:meal_app/meal_app/sceens/item_screen.dart';

class CatagoryScreen extends StatelessWidget {
  CatagoryScreen({super.key});
  final CategoryController catagcrl = Get.put(CategoryController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        titleTextStyle: TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.bold,
            fontSize: context.width * 0.07),
        backgroundColor: Colors.black,
        title: const Text("Categories"),
      ),
      body: SafeArea(
        child: GridView.builder(
          padding: EdgeInsets.only(
              left: context.width / 50, right: context.width / 50),
          itemCount: catagcrl.product.length,
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            mainAxisSpacing: 12,
            crossAxisSpacing: 12,
            childAspectRatio: 1.7,
            crossAxisCount: 2,
          ),
          itemBuilder: (context, index) {
            return GestureDetector(
              onTap: () {
                catagcrl.updateCategoryModelIndex(index);

                Navigator.push(
                    context, MaterialPageRoute(builder: (c) => ItemScreen()));
              },
              child: Container(
                // margin: const EdgeInsets.only(left: 15, right: 7),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(22),
                    gradient: LinearGradient(
                        begin: Alignment.topLeft,
                        end: Alignment.bottomRight,
                        // colors: catagcrl.product[index].gradient
                        //     .map((color) => Color(color))
                        //     .toList()
                        colors: [
                          catagcrl.product[index].color.withOpacity(0.65),
                          catagcrl.product[index].color.withOpacity(1),
                        ])),
                child: Padding(
                  padding: EdgeInsets.only(
                      left: context.width / 26, top: context.height / 80),
                  child: Column(
                    mainAxisSize: MainAxisSize.max,
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        catagcrl.product[index].name,
                        style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.w800,
                          fontSize: context.width * 0.05,
                        ),
                        // Elevated Button , style, decoration. InkWell, ontap, onpressed (){}
                        // GestureDetector(ontap, child)
                      ),
                    ],
                  ),
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}
