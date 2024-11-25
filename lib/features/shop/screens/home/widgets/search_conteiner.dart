import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:syon_ecommerce_app/utils/constants/colors.dart';
import 'package:syon_ecommerce_app/utils/device/device_utility.dart';
import 'package:syon_ecommerce_app/utils/helpers/helper_functions.dart';

class SearchContainer extends StatelessWidget {
  const SearchContainer({
    super.key,
    required this.text,
    this.icon = Iconsax.search_normal,
    this.showBackgorund = true,
    this.showBorder = true,
  });

  final String text;
  final IconData? icon;
  final bool showBackgorund, showBorder;

  @override
  Widget build(BuildContext context) {
    final dark = SHelperFunctions.isDarkMofe(context);

    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 24.0),
      child: Container(
        width: SDeviceUtilis.getScreenWidth(context),
        padding: const EdgeInsets.all(16.0),
        decoration: BoxDecoration(
          color: showBackgorund
              ? dark
                  ? SColor.dark
                  : SColor.light
              : Colors.transparent,
          borderRadius: BorderRadius.circular(16.0),
          border: showBorder ? Border.all(color: Colors.grey) : null,
        ),
        child: Row(
          children: [
            Icon(
              icon,
              color: const Color.fromARGB(255, 90, 89, 89),
            ),
            SizedBox(
              width: 24.0,
            ),
            Text(
              text,
              style: Theme.of(context).textTheme.bodySmall,
            )
          ],
        ),
      ),
    );
  }
}
