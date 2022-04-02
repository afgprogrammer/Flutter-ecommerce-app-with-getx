import 'package:day59/controllers/home/HomeController.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconly/iconly.dart';
import 'package:zoom_tap_animation/zoom_tap_animation.dart';

class HomePage extends StatelessWidget {
  HomePage({ Key? key }) : super(key: key);

  final HomeController _homeController = Get.find();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomAppBar(
        elevation: 0,
        notchMargin: 10,
        child: Container(
          padding: EdgeInsets.symmetric(horizontal: 25, vertical: 10),
          child: Obx(() => Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              _bottomAppBarItem(icon: IconlyLight.home, page: 0),
              _bottomAppBarItem(icon: IconlyLight.bookmark, page: 1),
              _bottomAppBarItem(icon: IconlyLight.buy, page: 2),
              _bottomAppBarItem(icon: IconlyLight.profile, page: 3),
            ],
          ),
        )),
      ),
      body: PageView(
        controller: _homeController.pageController,
        physics: NeverScrollableScrollPhysics(),
        children: [
          ..._homeController.pages
        ],
      )
    );
  }

  Widget _bottomAppBarItem({icon, page}) {
    return ZoomTapAnimation(
      onTap: () => _homeController.goToTab(page),
      child: Icon(icon, color: _homeController.currentPage == page ? Colors.blue : Colors.grey, size: 22,),
    );
  }
}
