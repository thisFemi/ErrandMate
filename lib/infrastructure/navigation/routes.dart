import 'package:errandmate/presentation/screens.dart';
import 'package:errandmate/presentation/welcome/controllers/welcome.controller.dart';
import 'package:get/get_navigation/src/routes/get_route.dart';

import '../../presentation/splashscreen/splash.screen.dart';
import '../controllers/onboardingscreen.controller.binding.dart';
import '../controllers/splashscreen.controller.binding.dart';

class AppRoutes {
  static String initialRoute = '/initialRoute';

  static List<GetPage> routes = [
    GetPage(
      name: AppRoutes.initialRoute,
      page: () => SplashScreen(),
      binding: SplashscreenControllerBinding(),
    ),
    GetPage(
      name: AppRoutes.ONBOARDINGSCREEN,
      page: () => OnboardingScreen(),
      binding: OnboardingscreenControllerBinding(),
    ),
  ];
  static const ONBOARDINGSCREEN = '/onboardingscreen';
  static const SPLASHSCREEN = '/splashscreen';
  static const WELCOME = '/welcome';
}
