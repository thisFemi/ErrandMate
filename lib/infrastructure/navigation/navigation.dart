import 'package:errandmate/infrastructure/navigation/routes.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../../presentation/onboardingscreen/onboarding.screen.dart';
import '../../presentation/splashscreen/splash.screen.dart';
import '../controllers/onboardingscreen.controller.binding.dart';
import '../controllers/splashscreen.controller.binding.dart';

// import '../../config.dart';
// import '../../presentation/screens.dart';
// import 'bindings/controllers/controllers_bindings.dart';
// import 'navigation.dart';
// import 'routes.dart';

// class EnvironmentsBadge extends StatelessWidget {
//   final Widget child;
//   EnvironmentsBadge({required this.child});
//   @override
//   Widget build(BuildContext context) {
//     var env = ConfigEnvironments.getEnvironments()['env'];
//     var PRODUCTION;
//     return env != Environments.PRODUCTION
//         ? Banner(
//             location: BannerLocation.topStart,
//             message: env!,
//             color: env == Environments.QAS ? Colors.blue : Colors.purple,
//             child: child,
//           )
//         : SizedBox(child: child);
//   }
// }

class QAS {}

class PRODUCTION {}

class Environments {}

class ConfigEnvironments {
  static getEnvironments() {}
}

class Nav {
  static List<GetPage> routes = [
    GetPage(
      name: AppRoutes.SPLASHSCREEN,
      page: () => SplashScreen(),
      binding: SplashscreenControllerBinding(),
    ),
    GetPage(
      name: AppRoutes.ONBOARDINGSCREEN,
      page: () => OnboardingScreen(),
      binding: OnboardingscreenControllerBinding(),
    ),
  ];
}
