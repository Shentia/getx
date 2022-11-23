import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../controller/product_getbuilder_controller_uniqueId.dart';

// ignore: must_be_immutable
class ProductScreenGetBuilderUniqueId extends StatelessWidget {
  const ProductScreenGetBuilderUniqueId({super.key});
  // ProductController productController = Get.put(ProductController());
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 240, 232, 5),
      body: Center(
          child: ListView.builder(
        itemBuilder: (context, index) {
          return GestureDetector(
            onTap: () {
              Get.find<ProductGetBuilderControllerUniqueId>()
                  .setNewProduct(index);
            },
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                decoration: BoxDecoration(border: Border.all()),
                child: GetBuilder(
                    id: index,
                    init: ProductGetBuilderControllerUniqueId(),
                    builder: (ProductGetBuilderControllerUniqueId
                        productController) {
                      return Column(
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: [
                          Text(
                              "Product name: ${productController.productModel.name}",
                              style: const TextStyle(fontSize: 20)),
                          Text(
                              "Product Price:  ${productController.productModel.price}",
                              style: const TextStyle(fontSize: 20)),
                          Text(
                              "Product Offer:  ${productController.productModel.offer}",
                              style: const TextStyle(fontSize: 20)),
                        ],
                      );
                    }),
              ),
            ),
          );
        },
        itemCount: 15,
      )),
    );
  }
}
