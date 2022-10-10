import 'package:day59/shared/constants/ColorConstants.dart';
import 'package:day59/shared/constants/enums.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconly/iconly.dart';

import '../../controllers/home/HomeBinding.dart';
import '../../views/home/home_view.dart';
import '../../views/notifications/notification_view.dart';
import '../../views/reservation/reservation_view.dart';
import '../../views/services/services_view.dart';
import '../../views/services/tile_view.dart';

class CustomBottomNavBar extends StatelessWidget {
  const CustomBottomNavBar({
    Key? key,
    required this.selectedMenu,
  }) : super(key: key);

  final MenuState selectedMenu;

  @override
  Widget build(BuildContext context) {
    Color inActiveIconColor = ColorConstants.gray50;
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 14),
      decoration: BoxDecoration(
        border: Border.all(width: 2, color: ColorConstants.gray50),
        color: Colors.white,
        boxShadow: [
          BoxShadow(
            offset: const Offset(0, -15),
            blurRadius: 20,
            color: ColorConstants.gray50.withOpacity(0.15),
          ),
        ],
        borderRadius: const BorderRadius.only(
          topLeft: Radius.circular(40),
          topRight: Radius.circular(40),
        ),
      ),
      child: SafeArea(
          top: false,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              IconButton(
                icon: Icon(IconlyBold.home),
                iconSize: 30,
                color: MenuState.home == selectedMenu
                    ? kPrimaryColor
                    : inActiveIconColor,
                onPressed: () =>
                    Get.to(() => HomePage(), binding: HomeBinding()),
              ),
              IconButton(
                icon: Icon(IconlyBold.bookmark),
                iconSize: 30,
                color: MenuState.services == selectedMenu
                    ? kPrimaryColor
                    : inActiveIconColor,
                onPressed: () => Get.to(const ServiceView()),
              ),
              IconButton(
                icon: Icon(IconlyBold.calendar),
                iconSize: 30,
                color: MenuState.reservations == selectedMenu
                    ? kPrimaryColor
                    : inActiveIconColor,
                onPressed: () => Get.to((ReservationView())),
              ),
              IconButton(
                icon: Icon(IconlyBold.message),
                iconSize: 30,
                color: MenuState.notifications == selectedMenu
                    ? kPrimaryColor
                    : inActiveIconColor,
                onPressed: () => Get.to(const NotificationView()),
              ),
            ],
          )),
    );
  }
}
