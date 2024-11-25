// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

import 'package:syon_ecommerce_app/features/shop/screens/home/widgets/primary_header_container.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            PrimaryHeaderContainer(
              child: Column(
                children: [],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
