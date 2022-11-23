import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx/controller/product_controller.dart';

// ignore: must_be_immutable
class ProductScreen extends StatelessWidget {
  ProductScreen({super.key});
  ProductGetBuilderController productController =
      Get.put(ProductGetBuilderController());
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.yellowAccent,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Obx((() {
              return Column(
                children: [
                  Text(
                      "Product name: ${productController.productModel.value.name}",
                      style: const TextStyle(fontSize: 20)),
                  Text(
                      "Product Price:  ${productController.productModel.value.price}",
                      style: const TextStyle(fontSize: 20)),
                  Text(
                      "Product Offer:  ${productController.productModel.value.offer}",
                      style: const TextStyle(fontSize: 20)),
                ],
              );
            })),
            ElevatedButton(
                onPressed: () {
                  // counter = counter + 1;
                  productController.productModel.update((val) {
                    val!.name = "Lamb";
                    val.offer = "17%";
                    val.price = "97.99";
                  });
                },
                child: const Text("Press")),
            ElevatedButton(
                onPressed: () {
                  Get.back();
                },
                child: const Text("Back to Main"))
          ],
        ),
      ),
    );
  }
}
