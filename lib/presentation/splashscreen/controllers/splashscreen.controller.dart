import 'package:get/get.dart';

import '../../../infrastructure/navigation/routes.dart';

class SplashscreenController extends GetxController {
  @override
  void onReady() {
    super.onReady();
    Future.delayed(const Duration(milliseconds: 3000), () {
      Get.offNamed(AppRoutes.ONBOARDINGSCREEN);
    });
  }

  @override
  void onClose() {
    super.onClose();
  }
}
