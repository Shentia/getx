import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx/controller/product_controller.dart';
import 'package:getx/view/product_screen.dart';
import 'package:getx/view/product_screen_getx.dart';

class MainScreen extends StatelessWidget {
  MainScreen({super.key});
  var counter = 0.obs;
  // RxInt counter = 0.obs;
  // var counter = RxInt(0);
  // var counter = Rx<int>(0);

  // RxBool status = false.obs;
  //obx
  //GetX
  //GetBuilder

  ProductGetBuilderController productController =
      Get.put(ProductGetBuilderController());
  // ProductController productController = Get.put(ProductController(productModel:ProductModel(name: "",price: "",offer: "").obs));
  // productModel:
  //     ProductModel(name: "Coca", price: "100", offer: "30%").obs));
  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
                  counter = counter + 1;
                  productController.productModel.update((val) {
                    val!.name = "Lays";
                    val.offer = "20%";
                    val.price = "50.99";
                  });
                },
                child: const Text("Go to ProductScreen")),
            ElevatedButton(
                onPressed: () {
                  Get.to(ProductScreen());
                },
                child: const Text("Next Page")),
            ElevatedButton(
                onPressed: () {
                  Get.to(ProductScreenGetx());
                },
                child: const Text("Next GetX"))
          ],
        ),
      ),
    );
  }
}
