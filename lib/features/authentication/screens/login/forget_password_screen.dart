// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:syon_ecommerce_app/features/authentication/screens/login/login_screen.dart';
import 'package:syon_ecommerce_app/features/authentication/screens/login/reset_email.dart';
import 'package:syon_ecommerce_app/utils/constants/text_strings.dart';

class ForgetPasswordScreen extends StatelessWidget {
  const ForgetPasswordScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        actions: [
          IconButton(
              onPressed: () => Get.offAll(() => LoginScreen()),
              icon: Icon(Icons.highlight_remove_sharp))
        ],
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(24.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                STexts.forgetPassword,
                style: Theme.of(context).textTheme.headlineMedium,
              ),
              SizedBox(
                height: 15,
              ),
              Text(
                STexts.forgetPasswordSubTitle,
                style: Theme.of(context).textTheme.labelMedium,
              ),
              SizedBox(
                height: 55,
              ),
              TextFormField(
                decoration: InputDecoration(
                    prefixIcon: Icon(Icons.email), labelText: STexts.email),
              ),
              SizedBox(
                height: 35,
              ),
              SizedBox(
                width: double.infinity,
                child: ElevatedButton(
                    onPressed: () => Get.off(() => ResetEmailScreen()),
                    child: Text("Submit")),
              )
            ],
          ),
        ),
      ),
    );
  }
}
