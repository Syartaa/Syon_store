import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import 'package:syon_ecommerce_app/features/authentication/controllers/onboarding_controller.dart';
import 'package:syon_ecommerce_app/utils/constants/colors.dart';
import 'package:syon_ecommerce_app/utils/device/device_utility.dart';
import 'package:syon_ecommerce_app/utils/helpers/helper_functions.dart';

class onBoardingNavigation extends StatelessWidget {
  const onBoardingNavigation({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final controller = OnBoardingController.instance;
    final dark = SHelperFunctions.isDarkMofe(context);
    return Positioned(
      bottom: SDeviceUtilis.getBottomNavigationBarHeght() + 25,
      left: 20,
      child: SmoothPageIndicator(
        controller: controller.pageController,
        onDotClicked: controller.dotNavigationClick,
        count: 3,
        effect: ExpandingDotsEffect(
            activeDotColor: dark ? SColor.light : SColor.dark, dotHeight: 6),
      ),
    );
  }
}
