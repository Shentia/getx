import 'package:get/get.dart';
import 'package:get/get_state_manager/get_state_manager.dart';

import '../model/product_model.dart';

class ProductGetBuilderController extends GetxController {
  Rx<ProductModel> productModel =
      ProductModel(name: "Snack", price: "19.99", offer: "50%").obs;

  // ProductController({required this.productModel});
}
