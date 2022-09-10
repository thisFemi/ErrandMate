import 'package:errandmate/infrastructure/navigation/routes.dart';
import 'package:errandmate/utils/color_constant.dart';
import 'package:errandmate/utils/image_constant.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:introduction_screen/introduction_screen.dart';

import 'controllers/onboardingscreen.controller.dart';

class OnboardingScreen extends GetWidget<OnboardingscreenController> {
  final introKey = GlobalKey<IntroductionScreenState>();

  void _onIntroEnd(context) {
    // Get.toNamed(AppRoutes.WELCOME);
  }

  Widget _buildFullscreenImage() {
    return Image.asset(
      'assets/images/Onboarding4.png',
      fit: BoxFit.cover,
      height: double.infinity,
      width: double.infinity,
      alignment: Alignment.center,
    );
  }

  Widget _buildImage(String assetName, [double width = 350]) {
    return Container(
        padding: EdgeInsets.only(top: Get.height * .2),
        child: Center(
            child: Image.asset(
          'assets/images/$assetName',
          width: width,
          alignment: Alignment.center,
        )));
  }

  @override
  Widget build(BuildContext context) {
    const bodyStyle = TextStyle(fontSize: 19.0);

    const pageDecoration = const PageDecoration(
      // titleTextStyle: TextStyle(
      //   fontSize: 28.0,
      //   fontWeight: FontWeight.w700,
      // ),
      titlePadding: EdgeInsets.all(0),
      bodyTextStyle: TextStyle(
          fontWeight: FontWeight.w400,
          color: Color.fromARGB(255, 57, 138, 203),
          fontSize: 20),
      bodyPadding: EdgeInsets.fromLTRB(16.0, 0.0, 16.0, 16.0),
      pageColor: Colors.white,
      imagePadding: EdgeInsets.zero,
    );

    return IntroductionScreen(
      key: introKey,
      globalBackgroundColor: Colors.white,
      // globalHeader: Align(
      //   alignment: Alignment.topRight,
      //   child: SafeArea(
      //     child: Padding(
      //       padding: const EdgeInsets.only(top: 16, right: 16),
      //       child: _buildImage('Onboarding4.png', 100),
      //     ),
      //   ),
      // ),
      //   globalFooter: SizedBox(
      //   width: double.infinity,
      //   height: 60,
      //   child: ElevatedButton(
      //     child: const Text(
      //       'Let\'s go right away!',
      //       style: TextStyle(fontSize: 16.0, fontWeight: FontWeight.bold),
      //     ),
      //     onPressed: () => _onIntroEnd(context),
      //   ),
      // ),
      pages: [
        PageViewModel(
          title: '',
          body:
              "Feeling drained from the\nvarious academic and\n campus activites",
          image: _buildImage('Onboarding1.png'),
          decoration: pageDecoration,
        ),
        PageViewModel(
          title: "",
          body:
              "Are you in need of someone who\n can help with cleaning\n of your apartment",
          image: _buildImage('Onboarding2.png'),
          decoration: pageDecoration,
        ),
        PageViewModel(
          title: "",
          body:
              "Do you have dishes to wash,\n and you are too tired to \n do it yourself?.",
          image: _buildImage('Onboarding3.png'),
          decoration: pageDecoration,
        ),
        PageViewModel(
          title: "",
          body:
              "Do you have something you\n need to deliver or pickup \n on-campus/off-campus",
          image: _buildImage('Onboarding4.png'),
          // footer: ElevatedButton(
          //   onPressed: () {
          //     introKey.currentState?.animateScroll(0);
          //   },
          //   child: const Text(
          //     'FooButton',
          //     style: TextStyle(color: Colors.white),
          //   ),
          //   style: ElevatedButton.styleFrom(
          //     primary: Colors.lightBlue,
          //     shape: RoundedRectangleBorder(
          //       borderRadius: BorderRadius.circular(8.0),
          //     ),
          //   ),
          // ),
          decoration: pageDecoration,
        ),
        PageViewModel(
          title: "",
          body: "Your one stop app to \n all you campus\nerrand needs.",
          image: _buildImage('ErrandM_Colored_Logo.png'),
          decoration: pageDecoration,
        ),
      ],
      onDone: () => _onIntroEnd(context),
      //onSkip: () => _onIntroEnd(context), // You can override onSkip callback
      showSkipButton: false,
      skipOrBackFlex: 0,
      nextFlex: 0,
      showBackButton: true,
      //rtl: true, // Display as right-to-left
      back: const Icon(
        Icons.arrow_back,
        color: Color.fromARGB(255, 57, 138, 203),
      ),
      skip: const Text('Skip', style: TextStyle(fontWeight: FontWeight.w600)),
      next: const Icon(
        Icons.arrow_forward,
        color: Color.fromARGB(255, 57, 138, 203),
      ),

      done: Container(
        padding: EdgeInsets.all(10),
        width: 110,
        height: 40,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(5),
            color: ColorConstant.lightblue),
        child: InkWell(
            onTap: () {
              print("Next page");
            },
            child: const Text('Get Started',
                style: TextStyle(
                    fontWeight: FontWeight.w600, color: Colors.white))),
      ),
      curve: Curves.fastLinearToSlowEaseIn,
      controlsMargin: const EdgeInsets.all(16),
      controlsPadding: kIsWeb
          ? const EdgeInsets.all(12.0)
          : const EdgeInsets.fromLTRB(8.0, 4.0, 8.0, 4.0),
      dotsDecorator: const DotsDecorator(
        size: Size(10.0, 10.0),
        color: Color(0xFFBDBDBD),
        activeSize: Size(22.0, 10.0),
        activeColor: Color.fromARGB(255, 57, 138, 203),
        activeShape: RoundedRectangleBorder(
          borderRadius: BorderRadius.all(Radius.circular(25.0)),
        ),
      ),
      dotsContainerDecorator: const ShapeDecoration(
        color: Colors.transparent,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.all(Radius.circular(8.0)),
        ),
      ),
    );
  }
}
