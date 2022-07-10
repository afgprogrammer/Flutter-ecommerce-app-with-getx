import 'package:day59/controllers/products/ProductController.dart';
import 'package:day59/providers/ProductProvider.dart';
import 'package:day59/repositories/ProductRepository.dart';
import 'package:get/get.dart';

class ProductBinding implements Bindings {
  @override
  void dependencies() {  
    Get.lazyPut<ProductRepository>(() => ProductRepository(Get.find()));
    Get.lazyPut<ProductProvider>(() => ProductProvider(Get.find()));
    
    Get.lazyPut<ProductController>(() => ProductController(Get.find()));
  }
}
