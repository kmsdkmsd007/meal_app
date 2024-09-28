import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:meal_app/meal_app/category_controller.dart';
import 'package:meal_app/meal_app/modal/category_type_model.dart';
import 'package:meal_app/meal_app/sceens/cat_screen.dart';

class ItemScreen extends StatelessWidget {
  ItemScreen({super.key});
  // final CategoryController catagcrl = Get.put(CategoryController());

  final catagcrl = Get.find<CategoryController>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(kToolbarHeight),
        child: Obx(() {
          return AppBar(
            backgroundColor: Colors.blueGrey,
            title: Text(catagcrl
                .product[catagcrl.currentCategoryModelIndex.value].name),
          );
        }),
      ),
      body: Obx(() {
        return ListView.builder(
            itemCount: catagcrl
                .product[catagcrl.currentCategoryModelIndex.value]
                .categoryTypeModels
                .length,
            itemBuilder: (c, i) => GestureDetector(
                  onTap: () {
                    catagcrl.updateCatTypeIndex(i);
                    Navigator.push(
                        c,
                        MaterialPageRoute(
                            builder: (c) => IngredientScreen2(
                                // m: catagcrl
                                //     .product[catagcrl
                                //         .currentCategoryModelIndex.value]
                                //     .categoryTypeModels[
                                //         catagcrl.currentCatTypeIndex.value]
                                //     .ingredientsModel,
                                // image: catagcrl
                                //     .product[catagcrl
                                //         .currentCategoryModelIndex.value]
                                //     .categoryTypeModels[
                                //         catagcrl.currentCatTypeIndex.value]
                                //     .image,
                                )));
                  },
                  child: ItemWidget(
                      m: catagcrl
                          .product[catagcrl.currentCategoryModelIndex.value]
                          .categoryTypeModels[i]),
                ));
      }),
    );
  }
}

class ItemWidget extends StatelessWidget {
  const ItemWidget({
    super.key,
    required this.m,
  });
  final CategoryTypeModel m;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: EdgeInsets.symmetric(horizontal: context.width / 100),
          child: Stack(
            children: [
              ClipRRect(
                  borderRadius: BorderRadius.circular(15),
                  child: Image.network(
                    m.image,
                    height: context.height / 4,
                    width: context.width,
                    fit: BoxFit.cover,
                  )),
              Positioned(
                bottom: 0,
                child: Container(
                  decoration: BoxDecoration(
                    color: Colors.black.withOpacity(0.5),
                    borderRadius: const BorderRadius.only(
                      bottomLeft: Radius.circular(15),
                      bottomRight: Radius.circular(15),
                    ),
                  ),
                  width: context.width / 1.02,
                  // height: context.height / 6.58,

                  height: context.height / 12.58,
                  alignment: Alignment.topCenter,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Text(m.name,
                          style: const TextStyle(
                              fontSize: 22,
                              fontWeight: FontWeight.w500,
                              color: Colors.white)),
                      Row(
                        // mainAxisSize: MainAxisSize.max,
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          const SizedBox.shrink(),
                          Row(
                            children: [
                              const Icon(
                                Icons.timer,
                                size: 23,
                                color: Colors.white,
                              ),
                              const SizedBox(width: 12),
                              Text(
                                m.duration.inMinutes.toString(),
                                style: const TextStyle(color: Colors.white),
                              ),
                            ],
                          ),
                          Row(
                            children: [
                              const Icon(
                                Icons.punch_clock_sharp,
                                size: 23,
                                color: Colors.white,
                              ),
                              const SizedBox(width: 12),
                              Text(
                                m.type,
                                style: const TextStyle(color: Colors.white),
                              ),
                            ],
                          ),
                          Row(
                            children: [
                              const Icon(
                                Icons.shop,
                                size: 23,
                                color: Colors.white,
                              ),
                              const SizedBox(width: 12),
                              Text(
                                m.priceType,
                                style: const TextStyle(color: Colors.white),
                              ),
                            ],
                          ),
                          SizedBox.shrink()
                        ],
                      ),
                      SizedBox(
                        height: context.height / 100,
                      )
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
        SizedBox(
          height: context.height / 90,
        )
      ],
    );
  }
}
