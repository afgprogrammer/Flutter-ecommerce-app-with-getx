import 'package:cached_network_image/cached_network_image.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:day59/controllers/home/HomeController.dart';
import 'package:day59/models/OfferModel.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconly/iconly.dart';

class ExploreTab extends GetView<HomeController> {
  ExploreTab({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: CustomScrollView(
        slivers: [
          SliverAppBar(
            floating: true,
            pinned: true,
            title: Container(
              height: 45,
              decoration: BoxDecoration(
                color: Colors.grey.shade200,
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
                        color: Colors.grey.shade300,
                        borderRadius: BorderRadius.circular(10)
                      ),
                      child: Center(
                        child: Icon(IconlyLight.filter),
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
                height: MediaQuery.of(context).size.height * 0.3,
                child: CarouselSlider.builder(
                  carouselController: controller.carouselController,
                  options: CarouselOptions(
                    autoPlay: false,
                    enlargeCenterPage: true,
                    viewportFraction: 1,
                    aspectRatio: 1,
                    initialPage: 0,
                    onPageChanged: (index, reason) => controller.changeBanner(index),
                  ),
                  itemCount: controller.activeOffers.length,
                  itemBuilder: (BuildContext context, int itemIndex, int pageViewIndex) 
                    => _buildOffer(controller.activeOffers[itemIndex]),
                ),
              ),
              // Offers indicator
              Obx(() => Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: controller.activeOffers.asMap().entries.map((entry) {
                  return Container(
                    width: 12.0,
                    height: 12.0,
                    margin: EdgeInsets.symmetric(vertical: 8.0, horizontal: 4.0),
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: (Theme.of(context).brightness == Brightness.dark
                        ? Colors.white
                        : Colors.black).withOpacity(controller.currentBanner == entry.key ? 0.7 : 0.2)),
                  );
                }).toList(),
              )),
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
}
