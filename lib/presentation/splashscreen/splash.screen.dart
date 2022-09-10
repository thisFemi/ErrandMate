import 'package:errandmate/utils/color_constant.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../../utils/image_constant.dart';
import 'controllers/splashscreen.controller.dart';

class SplashScreen extends GetWidget<SplashscreenController> {
  @override
  Widget build(BuildContext context) {
    SplashscreenController controller = Get.put(SplashscreenController());
    return SafeArea(
      child: Scaffold(
          backgroundColor: ColorConstant.lightblue,
          body: Center(
            child: Image.asset(
              ImageConstant.imgLogo,
              fit: BoxFit.fill,
            ),
          )),
    );
  }
}
