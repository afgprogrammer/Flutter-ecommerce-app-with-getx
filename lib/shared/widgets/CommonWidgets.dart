import 'package:flutter/material.dart';
import 'package:get/get.dart';

class CommonWidgets {
  static void snackBar(String type, String message) async {
    Get.snackbar(
      type, message,
      snackPosition: SnackPosition.BOTTOM,
      backgroundColor: type == 'error' ? Colors.red : Colors.green,
      colorText: Colors.white,
      icon: Icon(Icons.error, color: Colors.white)
    );
  }

  static void showSuccessToast(String title, String message) async {
    Get.snackbar(
      title,
      message,
      snackPosition: SnackPosition.BOTTOM,
      backgroundColor: Colors.green,
      colorText: Colors.white,
      icon: Icon(Icons.check_circle, color: Colors.white),
    );
  }
}
