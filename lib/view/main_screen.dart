import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx/model/product_model.dart';

class MainScreen extends StatelessWidget {
  MainScreen({super.key});
  var counter = 0.obs;
  // RxInt counter = 0.obs;
  // var counter = RxInt(0);
  // var counter = Rx<int>(0);
  Rx<ProductModel> productModel =
      ProductModel(name: "Snack", price: "19.99", offer: "50%").obs;
  //obx
  //GetX
  //GetBuilder

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
                  Text("Product name: ${productModel.value.name}",
                      style: const TextStyle(fontSize: 20)),
                  Text("Product Price:  ${productModel.value.price}",
                      style: const TextStyle(fontSize: 20)),
                  Text("Product Offer:  ${productModel.value.offer}",
                      style: const TextStyle(fontSize: 20)),
                ],
              );
            })),
            ElevatedButton(
                onPressed: () {
                  // counter = counter + 1;
                  productModel.update((val) {
                    val!.name = "Lays";
                    val.offer = "20%";
                    val.price = "50.99";
                  });
                },
                child: const Text("Press"))
          ],
        ),
      ),
    );
  }
}
