// ignore_for_file: prefer_const_constructors

import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:syon_ecommerce_app/common/widgets/containers/circular_container.dart';
import 'package:syon_ecommerce_app/common/widgets/images/rounded_image.dart';
import 'package:syon_ecommerce_app/features/shop/screens/home/widgets/home_header.dart';
import 'package:syon_ecommerce_app/features/shop/screens/home/widgets/promo_slider.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: const [
            HomeAppBar(),
            Padding(padding: EdgeInsets.all(8.0), child: PromoSlider())
          ],
        ),
      ),
    );
  }
}
