import 'package:day59/controllers/home/HomeBinding.dart';
import 'package:day59/controllers/products/ProductBinding.dart';
import 'package:day59/views/home/home_view.dart';
import 'package:day59/views/messages/not_found_view.dart';
import 'package:day59/views/notifications/notification_view.dart';
import 'package:day59/views/product/ProductPage.dart';
import 'package:day59/views/reservation/reservation_view.dart';
import 'package:day59/views/services/services_view.dart';
import 'package:day59/views/splash/splash_screen.dart';
import 'package:get/route_manager.dart';

import '../views/change_hotel/change_hotel_view.dart';
import '../views/services/tile_view.dart';

class AppRoutes {
  static const detailPage = '/product/:id';
  static const changeHotel = '/hotel';
  static const homePage = '/home';
  static const homePage2 = '/home2';
  static const notFoundPage = '/not_found';
  static const notificationsPage = '/notifications';
  static const reservationPage = '/reservation';
  static const servicesPage = '/services';
  static const splashPage = '/splash';
}

class Routes {
  static const INITIAL = AppRoutes.splashPage;
  static const ERROR = AppRoutes.notFoundPage;

  static final routes = [
    GetPage(
      name: AppRoutes.changeHotel,
      page: () => ChangeHotelView(),
    ),
    GetPage(
      name: AppRoutes.notFoundPage,
      page: () => NotFoundView(),
    ),
    GetPage(
      name: AppRoutes.splashPage,
      page: () => SplashView(),
    ),
    GetPage(
      name: AppRoutes.servicesPage,
      page: () => ServiceView(),
    ),
    GetPage(
      name: AppRoutes.reservationPage,
      page: () => ReservationView(),
    ),
    GetPage(
      name: AppRoutes.notificationsPage,
      page: () => NotificationView(),
    ),
    GetPage(
      name: AppRoutes.homePage,
      page: () => HomePage(),
      binding: HomeBinding(),
    ),
    GetPage(
      name: AppRoutes.detailPage,
      page: () => ProductPage(),
      binding: ProductBinding(),
    )
  ];
}
