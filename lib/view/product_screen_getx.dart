import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx/controller/product_controller.dart';

// ignore: must_be_immutable
class ProductScreenGetx extends StatelessWidget {
  const ProductScreenGetx({super.key});
  // ProductController productController = Get.put(ProductController());
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 72, 255, 0),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            GetX(
                autoRemove: true,
                init: ProductGetBuilderController(),
                builder: (ProductGetBuilderController productController) {
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
                }),
            ElevatedButton(
                onPressed: () {
                  Get.find<ProductGetBuilderController>()
                      .productModel
                      .update((val) {
                    val!.name = "Cocoa";
                    val.price = "20.99";
                    val.offer = "10%";
                  });
                },
                child: const Text("Press")),
          ],
        ),
      ),
    );
  }
}
