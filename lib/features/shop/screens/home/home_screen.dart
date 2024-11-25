// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:syon_ecommerce_app/common/widgets/appbar/appbar.dart';
import 'package:syon_ecommerce_app/common/widgets/products/cart/cart_counter_icon.dart';
import 'package:syon_ecommerce_app/common/widgets/texts/section_heading.dart';

import 'package:syon_ecommerce_app/features/shop/screens/home/widgets/primary_header_container.dart';
import 'package:syon_ecommerce_app/features/shop/screens/home/widgets/search_conteiner.dart';
import 'package:syon_ecommerce_app/utils/constants/text_strings.dart';
import 'package:syon_ecommerce_app/utils/device/device_utility.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            HomeAppBar(),
          ],
        ),
      ),
    );
  }
}

class HomeAppBar extends StatelessWidget {
  const HomeAppBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return PrimaryHeaderContainer(
      child: Column(
        children: [
          SAppBar(
            title: Column(
              crossAxisAlignment:
                  CrossAxisAlignment.start, // Ensure title alignment
              children: [
                Text(
                  STexts.homeAppbarTitle,
                  style: Theme.of(context)
                      .textTheme
                      .labelMedium!
                      .apply(color: Colors.grey),
                ),
                Text(
                  STexts.homeAppbarSubTitle,
                  style: Theme.of(context)
                      .textTheme
                      .headlineSmall!
                      .apply(color: Colors.white),
                ),
              ],
            ),
            actions: [
              CardCounterIcon(
                onPressed: () {},
              )
            ],
          ),
          SizedBox(
            height: 32.0,
          ),

          //serach bar
          SearchContainer(
            text: 'Search in Store',
          ),

          SizedBox(
            height: 32.0,
          ),

          Padding(
            padding: EdgeInsets.only(left: 16.0),
            child: Column(
              children: const [
                SectionHeading(
                  title: 'Popular Categories',
                  showActionButton: false,
                  textColor: Colors.white,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
