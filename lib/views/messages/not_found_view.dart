import 'package:day59/shared/constants/ColorConstants.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:lottie/lottie.dart';

const double defaultPadding = 0;

class NotFoundView extends StatelessWidget {
  const NotFoundView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFF6F9FA),
      floatingActionButton: SizedBox(
        height: 64,
        width: 64,
        child: ElevatedButton(
          onPressed: () => Get.back(),
          style: ElevatedButton.styleFrom(
              shape: const CircleBorder(), backgroundColor: kPrimaryColor),
          child: Icon(Icons.arrow_back, color: ColorConstants.gray50),
        ),
      ),
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Lottie.asset(
              "assets/lottie/not_found.json",
              repeat: true,
              animate: true,
            ),
            const SizedBox(height: defaultPadding),
            Text(
              "Looks like you are lost!",
              style: Theme.of(context).textTheme.headline6,
            ),
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 20, vertical: 20),
              child: Text(
                "This page doesn't exist.  Go back to previous page.",
                textAlign: TextAlign.center,
              ),
            )
          ],
        ),
      ),
    );
  }
}
