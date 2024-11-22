// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:syon_ecommerce_app/features/authentication/screens/signup/widget/signup_form.dart';
import 'package:syon_ecommerce_app/features/authentication/screens/signup/widget/sigup_header.dart';

class SignupScreen extends StatelessWidget {
  const SignupScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(18.0),
          child: Column(
            children: [
              SignUpHeader(),
              SizedBox(
                height: 16,
              ),
              SigupForm(),
            ],
          ),
        ),
      ),
    );
  }
}
