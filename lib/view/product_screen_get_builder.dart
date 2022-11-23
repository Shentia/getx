import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../controller/product_getBuilder_controller.dart';

// ignore: must_be_immutable
class ProductScreenGetBuilder extends StatelessWidget {
  const ProductScreenGetBuilder({super.key});
  // ProductController productController = Get.put(ProductController());
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 72, 255, 0),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            GetBuilder<ProductGetBuilderController>(
                init: ProductGetBuilderController(),
                builder: (ProductGetBuilderController productController) {
                  return Column(
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
            ElevatedButton(
                onPressed: () {
                  Get.find<ProductGetBuilderController>().setNewProduct();
                },
                child: const Text("Press")),
          ],
        ),
      ),
    );
  }
}
