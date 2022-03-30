import 'package:day59/controllers/home/HomeController.dart';
import 'package:day59/providers/CategoryProvider.dart';
import 'package:day59/providers/OfferProvider.dart';
import 'package:day59/repositories/CategoryRepository.dart';
import 'package:day59/repositories/OfferRepository.dart';
import 'package:get/get.dart';

class HomeBinding implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut<OfferRepository>(() => OfferRepository(Get.find()));
    Get.lazyPut<OfferProvider>(() => OfferProvider(Get.find()));

    Get.lazyPut<CategoryRepository>(() => CategoryRepository(Get.find()));
    Get.lazyPut<CategoryProvider>(() => CategoryProvider(Get.find()));
    
    Get.lazyPut<HomeController>(() => HomeController(Get.find()));
  }
}
