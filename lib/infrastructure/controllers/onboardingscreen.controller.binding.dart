import 'package:get/get.dart';

import '../../../../presentation/onboardingscreen/controllers/onboardingscreen.controller.dart';

class OnboardingscreenControllerBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<OnboardingscreenController>(
      () => OnboardingscreenController(),
    );
  }
}
