// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:syon_ecommerce_app/features/authentication/controllers/onboarding_controller.dart';
import 'package:syon_ecommerce_app/features/authentication/screens/onboarding/widget/on_boarding_navigation.dart';
import 'package:syon_ecommerce_app/features/authentication/screens/onboarding/widget/on_boarding_next_button.dart';
import 'package:syon_ecommerce_app/features/authentication/screens/onboarding/widget/onboarding_page.dart';
import 'package:syon_ecommerce_app/utils/constants/image_strings.dart';
import 'package:syon_ecommerce_app/utils/constants/text_strings.dart';

class OnboardingScreen extends StatelessWidget {
  const OnboardingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(OnBoardingController());

    return Scaffold(
      body: Stack(
        children: [
          /// Horizontal Scrollable Page
          PageView(
            controller: controller.pageController,
            onPageChanged: controller.updatePageIndicator,
            children: [
              onBoardingPage(
                image: SImage.onBoardingImage1,
                title: STexts.onBoardingTitle1,
                subTitle: STexts.onBoardingSubTitle1,
              ),
              onBoardingPage(
                image: SImage.onBoardingImage2,
                title: STexts.onBoardingTitle2,
                subTitle: STexts.onBoardingSubTitle2,
              ),
              onBoardingPage(
                image: SImage.onBoardingImage3,
                title: STexts.onBoardingTitle3,
                subTitle: STexts.onBoardingSubTitle3,
              ),
            ],
          ),

          /// Skip Button
          Positioned(
            top: 50,
            right: 20,
            child: TextButton(
              onPressed: () => controller.skipPage(),
              child: Text("Skip"),
            ),
          ),

          /// Dot Navigation SmoothPageIndicator
          onBoardingNavigation(),

          /// Circular Button
          onBoardingNextButton()
        ],
      ),
    );
  }
}
