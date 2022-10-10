import 'package:cached_network_image/cached_network_image.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:day59/controllers/home/HomeController.dart';
import 'package:day59/models/categories/CategoryModel.dart';
import 'package:day59/models/offers/OfferModel.dart';
import 'package:day59/shared/constants/ColorConstants.dart';
import 'package:day59/shared/constants/size_config.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconly/iconly.dart';
import 'package:zoom_tap_animation/zoom_tap_animation.dart';

class ExploreTab extends GetView<HomeController> {
  ExploreTab({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return SafeArea(
        child: CustomScrollView(
      slivers: [
        SliverAppBar(
          leading: IconButton(
              onPressed: () => {Scaffold.of(context).openDrawer()},
              icon: Icon(Icons.menu)),
          automaticallyImplyLeading: false,
          floating: true,
          pinned: true,
          centerTitle: true,
          title: Padding(
            padding: EdgeInsets.only(
                bottom: getProportionateScreenHeight(20),
                top: getProportionateScreenHeight(20)),
            child: Text(
              "Hotel Name",
              style: headingStyle,
            ),
          ),
        ),
        SliverList(
          delegate: SliverChildListDelegate([
            _buildOfferCarousel(context),
            _buildOfferIndicator(),
            SizedBox(
              height: 16,
            ),
            _buildSection('Top Services', theme),
            SizedBox(
              height: 8,
            ),
            _buildCategories(theme),
            SizedBox(
              height: 16,
            ),
            _buildSection('Discounts', theme),
            SizedBox(
              height: 8,
            ),
            _buildDiscountedProducts(theme)
          ]),
        ),
      ],
    ));
  }

  Widget _buildOfferCarousel(context) {
    return Container(
      height: MediaQuery.of(context).size.height * 0.25,
      child: CarouselSlider.builder(
        carouselController: controller.carouselController,
        options: CarouselOptions(
          autoPlay: true,
          enlargeCenterPage: true,
          viewportFraction: 1,
          aspectRatio: 1,
          initialPage: 0,
          autoPlayAnimationDuration: Duration(milliseconds: 800),
          onPageChanged: (index, reason) => controller.changeBanner(index),
        ),
        itemCount: controller.activeOffers.length,
        itemBuilder: (BuildContext context, int itemIndex, int pageViewIndex) =>
            _buildOffer(controller.activeOffers[itemIndex]),
      ),
    );
  }

  Widget _buildOffer(OfferModel offer) {
    return Container(
      width: double.infinity,
      clipBehavior: Clip.hardEdge,
      margin: EdgeInsets.all(16),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: Colors.grey.shade100,
      ),
      child: Stack(
        children: [
          Image.asset(
            offer.image,
            width: double.infinity,
            fit: BoxFit.cover,
          )
        ],
      ),
    );
  }

  Widget _buildOfferIndicator() {
    return Obx(() => Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: controller.activeOffers.asMap().entries.map((entry) {
            return AnimatedContainer(
              duration: Duration(milliseconds: 500),
              width: 8.0,
              height: 8.0,
              margin: EdgeInsets.symmetric(horizontal: 4.0),
              decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: (Get.isDarkMode ? Colors.white : Colors.blueGrey)
                      .withOpacity(
                          controller.currentBanner == entry.key ? 0.9 : 0.2)),
            );
          }).toList(),
        ));
  }

  // Widget _buildCategory(CategoryModel category, index, theme) {
  //   return ZoomTapAnimation(
  //     beginDuration: Duration(milliseconds: 300),
  //     endDuration: Duration(milliseconds: 500),
  //     child: Container(
  //       clipBehavior: Clip.hardEdge,
  //       decoration: BoxDecoration(
  //         borderRadius: BorderRadius.circular(50),
  //       ),
  //       margin: EdgeInsets.only(
  //           right: controller.categories.length - 1 == index ? 0 : 8),
  //       child: Stack(
  //         children: [
  //           Container(
  //             width: 80,
  //             height: 80,
  //             child: Image.network(
  //               category.image,
  //               fit: BoxFit.cover,
  //             ),
  //           ),
  //           Positioned(
  //             top: 0,
  //             left: 0,
  //             right: 0,
  //             bottom: 0,
  //             child: Container(
  //               height: 80,
  //               decoration: BoxDecoration(
  //                 color: Colors.black.withAlpha(160),
  //               ),
  //               child: Center(
  //                 child: Text(
  //                   category.name,
  //                   textAlign: TextAlign.center,
  //                   style: theme.textTheme.subtitle1
  //                       ?.copyWith(color: Colors.white),
  //                 ),
  //               ),
  //             ),
  //           )
  //         ],
  //       ),
  //     ),
  //   );
  // }

  Widget _buildCategory(CategoryModel category, index, theme) {
    return ZoomTapAnimation(
      beginDuration: Duration(milliseconds: 300),
      endDuration: Duration(milliseconds: 500),
      child: GestureDetector(
        child: SizedBox(
          width: getProportionateScreenWidth(90),
          height: getProportionateScreenHeight(90),
          child: Column(
            children: [
              Container(
                padding: EdgeInsets.all(getProportionateScreenWidth(10)),
                height: getProportionateScreenHeight(70),
                width: getProportionateScreenWidth(70),
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius:
                        BorderRadius.circular(getProportionateScreenWidth(35)),
                    border: Border.all(color: kPrimaryColor, width: 3)),
                child: Image.network(
                  category.image,
                  fit: BoxFit.contain,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildSection(String title, ThemeData theme) {
    return Padding(
      padding: const EdgeInsets.only(left: 16.0, right: 0.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            title,
            style: theme.textTheme.subtitle1
                ?.copyWith(fontWeight: FontWeight.w600),
          ),
          MaterialButton(
            onPressed: () {},
            minWidth: 50,
            splashColor: theme.primaryColor.withAlpha(10),
            highlightColor: theme.primaryColor.withAlpha(30),
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(80)),
            child: Icon(
              IconlyLight.arrow_right,
              size: 20,
              color: theme.primaryColor,
            ),
          )
        ],
      ),
    );
  }

  Widget _buildCategories(ThemeData theme) {
    return Container(
      height: 80,
      child: ListView.builder(
        padding: EdgeInsets.symmetric(horizontal: 16),
        scrollDirection: Axis.horizontal,
        itemCount: controller.categories.length,
        itemBuilder: (context, index) {
          return _buildCategory(controller.categories[index], index, theme);
        },
      ),
    );
  }

  Widget _buildDiscountedProducts(ThemeData theme) {
    return Container(
      height: getProportionateScreenHeight(200),
      child: ListView.builder(
        padding: EdgeInsets.only(left: 16),
        scrollDirection: Axis.horizontal,
        itemCount: controller.discountedProducts.length,
        itemBuilder: (context, index) {
          return AspectRatio(
            aspectRatio: 1,
            child: GestureDetector(
              onTap: () {
                Get.toNamed(
                    '/product/${controller.discountedProducts[index].id}');
              },
              child: Container(
                  clipBehavior: Clip.hardEdge,
                  margin: EdgeInsets.only(right: 16),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(8),
                    color: Get.isDarkMode
                        ? ColorConstants.gray700
                        : Colors.grey.shade200,
                    border: Border.all(
                        color: Get.isDarkMode
                            ? Colors.transparent
                            : Colors.grey.shade200,
                        width: 1),
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        height: 150,
                        width: double.infinity,
                        child: Image.asset(
                          controller.discountedProducts[index].image,
                          fit: BoxFit.cover,
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.all(10),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(controller.discountedProducts[index].name,
                                style: theme.textTheme.subtitle1),
                          ],
                        ),
                      )
                    ],
                  )),
            ),
          );
        },
      ),
    );
  }
}
