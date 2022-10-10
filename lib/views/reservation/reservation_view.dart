import 'package:day59/shared/constants/ColorConstants.dart';
import 'package:day59/shared/constants/size_config.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ReservationView extends StatelessWidget {
  @override
  final List<String> images = [
    "https://img.freepik.com/free-photo/swimming-pool-beach-luxury-hotel-type-entertainment-complex-amara-dolce-vita-luxury-hotel-resort-tekirova-kemer-turkey_146671-18726.jpg?w=740&t=st=1665353940~exp=1665354540~hmac=b0ba8368437537a5e43cf79ccb96083075f220751a258fab47877ef901b137af",
    "https://img.freepik.com/free-photo/beautiful-umbrella-chair-around-swimming-pool-hotel-resort_74190-1006.jpg?w=740&t=st=1665353991~exp=1665354591~hmac=f345b6a03cbe39c6cee02721d4ebab050c9139cedc0726b35ab1bc9a1de8804e",
    "https://img.freepik.com/free-photo/hotel-bell_1203-2898.jpg?w=740&t=st=1665354022~exp=1665354622~hmac=febae751e585391825faa6fea359db5f9c0ae7204614a5256fbbf02dec5363df",
    "https://img.freepik.com/free-photo/housekeeper-cleaning-hotel-room_53876-30786.jpg?w=740&t=st=1665354025~exp=1665354625~hmac=9f637b88dd504ee7607f8aa986898b27fefcb34d9fadba93428d104ead96852a",
    "https://img.freepik.com/free-photo/scenic-view-sandy-beach-beach-with-sun-beds-umbrellas-open-against-sea-mountains-hotel-resort-tekirova-kemer-turkey_146671-18876.jpg?w=740&t=st=1665354032~exp=1665354632~hmac=7f01a9749d0467cd6ca381c263469f877bb21d14a045e546df1c2aea34a6385f",
    "https://img.freepik.com/free-photo/banquet-table-with-restaurant-serving_144627-18355.jpg?w=740&t=st=1665354036~exp=1665354636~hmac=a5075c8a6600626784b25586fe12915b71a114e1227a58821e7c704d8dd42de9",
    "https://hips.hearstapps.com/amv-prod-cad-assets.s3.amazonaws.com/images/16q1/665019/2016-chevrolet-silverado-2500hd-high-country-diesel-test-review-car-and-driver-photo-665520-s-original.jpg",
    "https://img.freepik.com/free-photo/luxury-dinner-table-hotel_1150-11071.jpg?w=740&t=st=1665354037~exp=1665354637~hmac=5fc66bb4d665022ed3d8e6cf88e7c4ba8dcfc1283c0f2d1826ba682886c64801",
    "https://img.freepik.com/free-photo/umbrella-pool-chair_74190-1317.jpg?w=740&t=st=1665354038~exp=1665354638~hmac=e3bfb5466046cf9e637158611fc019982d5de27729bf13125151c4306bd61f99",
    "https://img.freepik.com/free-photo/swimming-pool-beach-luxury-hotel-type-entertainment-complex-amara-dolce-vita-luxury-hotel-resort-tekirova-kemer-turkey_146671-18726.jpg?w=740&t=st=1665353940~exp=1665354540~hmac=b0ba8368437537a5e43cf79ccb96083075f220751a258fab47877ef901b137af",
    "https://img.freepik.com/free-photo/beautiful-umbrella-chair-around-swimming-pool-hotel-resort_74190-1006.jpg?w=740&t=st=1665353991~exp=1665354591~hmac=f345b6a03cbe39c6cee02721d4ebab050c9139cedc0726b35ab1bc9a1de8804e",
    "https://img.freepik.com/free-photo/hotel-bell_1203-2898.jpg?w=740&t=st=1665354022~exp=1665354622~hmac=febae751e585391825faa6fea359db5f9c0ae7204614a5256fbbf02dec5363df",
    "https://img.freepik.com/free-photo/housekeeper-cleaning-hotel-room_53876-30786.jpg?w=740&t=st=1665354025~exp=1665354625~hmac=9f637b88dd504ee7607f8aa986898b27fefcb34d9fadba93428d104ead96852a",
    "https://img.freepik.com/free-photo/scenic-view-sandy-beach-beach-with-sun-beds-umbrellas-open-against-sea-mountains-hotel-resort-tekirova-kemer-turkey_146671-18876.jpg?w=740&t=st=1665354032~exp=1665354632~hmac=7f01a9749d0467cd6ca381c263469f877bb21d14a045e546df1c2aea34a6385f",
  ];
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text("Reservation"),
        ),
        body: GridView.builder(
          itemCount: images.length,
          itemBuilder: (context, index) => Container(
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
                    child: Image.network(
                      images[index],
                      fit: BoxFit.cover,
                    ),
                  ),
                ],
              )),
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2,
              crossAxisSpacing: getProportionateScreenWidth(16),
              mainAxisSpacing: getProportionateScreenWidth(16)),
        ));
  }
}