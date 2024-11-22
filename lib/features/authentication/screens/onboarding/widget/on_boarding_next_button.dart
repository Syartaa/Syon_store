import 'package:flutter/material.dart';
import 'package:syon_ecommerce_app/features/authentication/controllers/onboarding_controller.dart';
import 'package:syon_ecommerce_app/utils/constants/colors.dart';
import 'package:syon_ecommerce_app/utils/device/device_utility.dart';
import 'package:syon_ecommerce_app/utils/helpers/helper_functions.dart';

class onBoardingNextButton extends StatelessWidget {
  const onBoardingNextButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final dark = SHelperFunctions.isDarkMofe(context);
    return Positioned(
        right: 20,
        bottom: SDeviceUtilis.getBottomNavigationBarHeght(),
        child: ElevatedButton(
            onPressed: () => OnBoardingController.instance.nextPage(),
            style: ElevatedButton.styleFrom(
                shape: CircleBorder(),
                backgroundColor: dark ? SColor.primaryColor : Colors.black),
            child: const Icon(
              Icons.keyboard_arrow_right_outlined,
              size: 29,
            )));
  }
}
