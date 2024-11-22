// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:syon_ecommerce_app/common/widgets/succes_screen.dart';
import 'package:syon_ecommerce_app/features/authentication/screens/login/login_screen.dart';
import 'package:syon_ecommerce_app/utils/constants/text_strings.dart';

class VerifyEmailScreen extends StatelessWidget {
  const VerifyEmailScreen({super.key});

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
          padding: const EdgeInsets.all(24.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image(
                width: MediaQuery.of(context).size.width * 0.8,
                height: MediaQuery.of(context).size.height * 0.4,
                fit: BoxFit.contain,
                image: AssetImage("assets/images/4.gif"),
              ),
              Text(
                "Verify your email address!",
                style: Theme.of(context).textTheme.headlineMedium,
                textAlign: TextAlign.center,
              ),
              SizedBox(
                height: 20,
              ),
              Text(
                STexts.confirmEmailSubTitle,
                style: Theme.of(context).textTheme.labelMedium,
                textAlign: TextAlign.center,
              ),
              SizedBox(
                height: 25,
              ),
              SizedBox(
                width: double.infinity,
                child: ElevatedButton(
                    onPressed: () => Get.to(() => SuccesScreen(
                          title: STexts.yourAccountCreatedTitle,
                          image: "assets/images/5.gif",
                          subtitle: STexts.yourAccountCreatedSubTitle,
                          onPressed: () => Get.to(() => LoginScreen()),
                        )),
                    child: Text("Continue")),
              ),
              SizedBox(
                height: 15,
              ),
              SizedBox(
                width: double.infinity,
                child:
                    TextButton(onPressed: () {}, child: Text("Resend Email")),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
