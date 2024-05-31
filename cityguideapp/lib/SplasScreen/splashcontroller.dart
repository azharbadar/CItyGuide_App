import 'package:cityguideapp/LoginScreen/loginscreen.dart';
import 'package:get/get.dart';
import 'package:flutter/material.dart';

class SplashController extends GetxController {
  changescreen() async {
    await Future.delayed(
      const Duration(seconds: 2),
      () {
        Get.off(LoginScreen());
      },
    );
    update();
  }

  @override
  void onInit() {
    changescreen();
    // TODO: implement onInit
    super.onInit();
  }

  @override
  void onClose() {
    changescreen();
    // TODO: implement onClose
    super.onClose();
  }
}
