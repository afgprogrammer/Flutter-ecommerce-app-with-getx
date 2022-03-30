import 'package:carousel_slider/carousel_controller.dart';
import 'package:day59/models/categories/CategoryModel.dart';
import 'package:day59/models/offers/OfferModel.dart';
import 'package:day59/providers/CategoryProvider.dart';
import 'package:day59/providers/OfferProvider.dart';
import 'package:day59/views/home/tabs/CardTab.dart';
import 'package:day59/views/home/tabs/ExploreTab.dart';
import 'package:day59/views/home/tabs/FavoriteTab.dart';
import 'package:day59/views/home/tabs/UserTab.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class HomeController extends GetxController {
  final OfferProvider _offerProvider;
  HomeController(this._offerProvider);

  late PageController pageController;
  late CarouselController carouselController;
  late CategoryProvider _categoryProvider = Get.find();

  var currentPage = 0.obs;
  var currentBanner = 0.obs;
  var activeOffers = <OfferModel>[].obs;
  var categories = <CategoryModel>[].obs;

  List<Widget> pages = [
    ExploreTab(),
    FavoriteTab(),
    CardTab(),
    UserTab(),
  ];

  @override
  void onInit() {
    pageController = PageController(initialPage: 0);
    carouselController = CarouselController();

    getOffers();
    getCategories();
    super.onInit();
  }

  void getOffers() {
    _offerProvider.getOffers().then((offers) {
      print(offers);
      activeOffers.value = offers;
    });
  }

  void getCategories() {
    _categoryProvider.getCategories().then((categories) {
      print(categories);

      this.categories.value = categories;
    });
  }

  void goToTab(int page) {
    currentPage.value = page;
    pageController.jumpToPage(page);
  }

  void changeBanner(int index) {
    currentBanner.value = index;
  }

  @override
  void dispose() {
    pageController.dispose();

    super.dispose();
  }
}
