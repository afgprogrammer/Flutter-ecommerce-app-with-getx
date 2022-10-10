import 'package:day59/controllers/home/HomeBinding.dart';
import 'package:day59/controllers/products/ProductBinding.dart';
import 'package:day59/views/home/HomePage.dart';
import 'package:day59/views/messages/not_found_view.dart';
import 'package:day59/views/product/ProductPage.dart';
import 'package:day59/views/splash/splash_screen.dart';
import 'package:get/route_manager.dart';

class AppRoutes {
  static const homePage = '/home';
  static const homePage2 = '/home2';
  static const detailPage = '/product/:id';
  static const servicesPage = '/services';
  static const notFoundPage = '/not_found';
  static const notificationsPage = '/notifications';
  static const reservationPage = '/reservation';
  static const splashPage = '/splash';
}

class Routes {
  static const INITIAL = AppRoutes.splashPage;
  static const ERROR = AppRoutes.notFoundPage;

  static final routes = [
    GetPage(
      name: AppRoutes.notFoundPage,
      page: () => NotFoundView(),
    ),
    GetPage(
      name: AppRoutes.splashPage,
      page: () => SplashView(),
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
