import 'package:get/get.dart';

import '../model/product_model.dart';

class ProductGetBuilderController extends GetxController {
  ProductModel productModel =
      ProductModel(name: "Snack", price: "19.99", offer: "50%");

  setNewProduct() {
    productModel = ProductModel(name: "Copilot", price: "24", offer: "10%");
    update();
  }

  // ProductController({required this.productModel});
}
