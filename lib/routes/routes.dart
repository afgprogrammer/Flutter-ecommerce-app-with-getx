import 'package:day59/views/authentication/LoginPage.dart';
import 'package:day59/views/authentication/SplashPage.dart';
import 'package:day59/views/home/HomePage.dart';
import 'package:get/route_manager.dart';

class Routes {
  static const INITIAL = '/splash';

  static final routes = [
    GetPage(
      name: '/splash', 
      page: () => SplashPage(),
    ),
    GetPage(
      name: '/login', 
      page: () => LoginPage(),
    ),
    GetPage(
      name: '/home', 
      page: () => HomePage(),
    )
  ];
}
