// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:syon_ecommerce_app/features/shop/screens/home/home_screen.dart';
import 'package:syon_ecommerce_app/utils/helpers/helper_functions.dart';

class NavigationMenu extends StatelessWidget {
  const NavigationMenu({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(NavigationController());
    final darkMode = SHelperFunctions.isDarkMofe(context);

    return Scaffold(
      bottomNavigationBar: Obx(
        () => NavigationBar(
          height: 80,
          elevation: 0,
          selectedIndex: controller.seletectedIndex.value,
          onDestinationSelected: (index) =>
              controller.seletectedIndex.value = index,
          backgroundColor: darkMode ? Colors.black : Colors.white,
          indicatorColor: darkMode
              ? Colors.white.withOpacity(0.1)
              : Colors.black.withOpacity(0.1),
          destinations: [
            NavigationDestination(icon: Icon(Icons.home), label: 'Home'),
            NavigationDestination(icon: Icon(Icons.shop), label: 'Store'),
            NavigationDestination(
                icon: Icon(Icons.favorite), label: 'Wishlist'),
            NavigationDestination(
                icon: Icon(Icons.person_outline_rounded), label: 'Profile'),
          ],
        ),
      ),
      body: Obx(() => controller.screens[controller.seletectedIndex.value]),
    );
  }
}

class NavigationController extends GetxController {
  final Rx<int> seletectedIndex = 0.obs;

  final screens = [
    HomeScreen(),
    Container(
      color: Colors.amber,
    ),
    Container(
      color: Colors.red,
    ),
    Container(
      color: Colors.blue,
    ),
  ];
}
