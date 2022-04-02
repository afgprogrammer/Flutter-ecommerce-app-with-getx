import 'package:cached_network_image/cached_network_image.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:day59/controllers/home/HomeController.dart';
import 'package:day59/models/categories/CategoryModel.dart';
import 'package:day59/models/offers/OfferModel.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconly/iconly.dart';
import 'package:zoom_tap_animation/zoom_tap_animation.dart';

class ExploreTab extends GetView<HomeController> {
  ExploreTab({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return SafeArea(
      child: CustomScrollView(
        slivers: [
          SliverAppBar(
            floating: true,
            pinned: true,
            title: Container(
              height: 45,
              decoration: BoxDecoration(
                color: Get.isDarkMode ? Colors.grey.shade800 : Colors.grey.shade200,
                borderRadius: BorderRadius.circular(10)
              ),
              child: TextField(
                decoration: InputDecoration(
                  contentPadding: EdgeInsets.symmetric(vertical: 0, horizontal: 20),
                  hintText: "Search E.g iPhone X",
                  suffixIcon: Padding(
                    padding: const EdgeInsets.all(5.0),
                    child: Container(
                      width: 40,
                      decoration: BoxDecoration(
                        color: Get.isDarkMode ? Colors.grey.shade700 : Colors.grey.shade300,
                        borderRadius: BorderRadius.circular(10)
                      ),
                      child: Center(
                        child: Icon(IconlyLight.filter, color: Colors.grey,),
                      ),
                    ),
                  )
                ),
              ),
            )
          ),
          SliverList(
            delegate: SliverChildListDelegate([
              Container(
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
                  itemBuilder: (BuildContext context, int itemIndex, int pageViewIndex) 
                    => _buildOffer(controller.activeOffers[itemIndex]),
                ),
              ),
              // Offers indicator
              _buildOfferIndicator(),
              SizedBox(height: 16,),
              Padding(
                padding: const EdgeInsets.only(left: 16.0, right: 8.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text("Top Categories", style: theme.textTheme.subtitle1?.copyWith(fontWeight: FontWeight.w600),),
                    TextButton(
                      onPressed: () {}, 
                      child: Text("See All", style: theme.textTheme.bodyText2?.copyWith(color: Colors.blue.shade500),)
                    )
                  ],
                ),
              ),
              Container(
                height: 60,
                child: ListView.builder(
                  padding: EdgeInsets.symmetric(horizontal: 16),
                  scrollDirection: Axis.horizontal,
                  itemCount: controller.categories.length,
                  itemBuilder: (context, index) {
                    return _buildCategory(controller.categories[index], index, theme);
                  },
                ),
              )
            ]),
          ),
        ],
      )
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
          CachedNetworkImage(
            width: double.infinity,
            imageUrl: offer.image,
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
              .withOpacity(controller.currentBanner == entry.key ? 0.9 : 0.2)
          ),
        );
      }).toList(),
    ));
  }

  Widget _buildCategory(CategoryModel category, index, theme) {
    return ZoomTapAnimation(
      beginDuration: Duration(milliseconds: 300),
      endDuration: Duration(milliseconds: 500),
      child: Container(
        clipBehavior: Clip.hardEdge,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
        ),
        margin: EdgeInsets.only(right: controller.categories.length - 1 == index ? 0 : 8),
        child: Stack(
          children: [
            Container(
              width: 120,
              height: 60,
              child: CachedNetworkImage(
                imageUrl: category.image,
                fit: BoxFit.cover,
              ),
            ),
            Positioned(
              top: 0,
              left: 0,
              right: 0,
              bottom: 0,
              child: Container(
                height: 80,
                decoration: BoxDecoration(
                  color: Colors.black.withAlpha(110),
                ),
                child: Center(
                  child: Text(category.name, textAlign: TextAlign.center, style: theme.textTheme.subtitle1?.copyWith(color: Colors.white),),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
