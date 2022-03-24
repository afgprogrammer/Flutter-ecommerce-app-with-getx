import 'package:day59/views/home/tabs/CardTab.dart';
import 'package:day59/views/home/tabs/ExploreTab.dart';
import 'package:day59/views/home/tabs/FavoriteTab.dart';
import 'package:day59/views/home/tabs/UserTab.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class HomeController extends GetxController {
  late PageController pageController;

  var currentPage = 0.obs;

  List<Widget> pages = [
    ExploreTab(),
    FavoriteTab(),
    CardTab(),
    UserTab(),
  ];

  @override
  void onInit() {
    pageController = PageController(initialPage: 0);

    super.onInit();
  }

  void goToTab(int page) {
    currentPage.value = page;
    pageController.jumpToPage(page);
  }

  @override
  void dispose() {
    pageController.dispose();

    super.dispose();
  }
}
