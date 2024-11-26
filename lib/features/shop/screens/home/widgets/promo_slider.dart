import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:syon_ecommerce_app/common/widgets/containers/circular_container.dart';
import 'package:syon_ecommerce_app/common/widgets/images/rounded_image.dart';
import 'package:syon_ecommerce_app/features/shop/controllers/home_controller.dart';
import 'package:syon_ecommerce_app/utils/constants/colors.dart';

class PromoSlider extends StatelessWidget {
  const PromoSlider({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(HomeController());

    return Column(
      children: [
        CarouselSlider(
          options: CarouselOptions(
            viewportFraction: 1,
            onPageChanged: (index, reason) =>
                controller.updatePageIndicator(index),
          ),
          items: const [
            RoundedImage(
              imageUrl: 'assets/images/promo/banner1.jpg',
            ),
            RoundedImage(
              imageUrl: 'assets/images/promo/banner2.jpg',
            ),
            RoundedImage(
              imageUrl: 'assets/images/promo/banner3.jpg',
            ),
          ],
        ),
        const SizedBox(
          height: 16.0,
        ),
        Obx(
          () => Row(
            children: [
              for (int i = 0; i < 3; i++)
                CircularContainer(
                  width: 20,
                  height: 4,
                  backgroundColor: controller.carouselCurrentIndex.value == i
                      ? SColor.primaryColor
                      : Colors.grey,
                  margin: const EdgeInsets.only(right: 10),
                ),
            ],
          ),
        )
      ],
    );
  }
}
