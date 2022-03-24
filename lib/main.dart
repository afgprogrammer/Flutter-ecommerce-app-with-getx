import 'package:get/get.dart';
import 'package:flutter/material.dart';
import 'package:day59/AppBinding.dart';
import 'package:day59/routes/routes.dart';

void main() {
  runApp(App());
}
class App extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      darkTheme: ThemeData(
        primarySwatch: Colors.yellow,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      getPages: Routes.routes,
      initialRoute: Routes.INITIAL,
      initialBinding: AppBinding(),
    );
  }
}
