import 'package:get/get.dart';

import '../model/product_model.dart';

class ProductGetBuilderControllerUniqueId extends GetxController {
  ProductModel productModel =
      ProductModel(name: "Snack", price: "19.99", offer: "50%");

  setNewProduct(int id) {
    productModel = ProductModel(name: "Copilot", price: "24", offer: "10%");
    productModel.name = "New Product";
    update([id]);
  }

  // ProductController({required this.productModel});
}
