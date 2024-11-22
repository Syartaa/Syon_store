// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:syon_ecommerce_app/features/authentication/screens/signup/verify_email_screen.dart';
import 'package:syon_ecommerce_app/utils/constants/text_strings.dart';
import 'package:syon_ecommerce_app/utils/helpers/helper_functions.dart';

class SigupForm extends StatelessWidget {
  const SigupForm({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final dark = SHelperFunctions.isDarkMofe(context);
    return Form(
      child: Column(
        children: [
          Row(
            children: [
              Expanded(
                child: TextFormField(
                  decoration: InputDecoration(
                    prefixIcon: Icon(Icons.account_circle_outlined),
                    labelText: STexts.firstName, // Label for first name
                  ),
                ),
              ),
              SizedBox(width: 10), // Add space between the fields
              Expanded(
                child: TextFormField(
                  decoration: InputDecoration(
                    prefixIcon: Icon(Icons.account_circle_outlined),
                    labelText: STexts.lastName, // Label for last name
                  ),
                ),
              ),
            ],
          ),
          SizedBox(
            height: 15,
          ),
          TextFormField(
            decoration: InputDecoration(
              prefixIcon: Icon(Icons.account_circle_outlined),
              labelText: STexts.username, // Label for last name
            ),
          ),
          SizedBox(
            height: 15,
          ),
          TextFormField(
            decoration: InputDecoration(
              prefixIcon: Icon(Icons.email),
              labelText: STexts.email, // Label for last name
            ),
          ),
          SizedBox(
            height: 15,
          ),
          TextFormField(
            decoration: InputDecoration(
              prefixIcon: Icon(Icons.phone),
              labelText: STexts.phoneNo, // Label for last name
            ),
          ),
          SizedBox(
            height: 15,
          ),
          TextFormField(
            decoration: InputDecoration(
                prefixIcon: Icon(Icons.password),
                labelText: STexts.passwprd, // Label for last name
                suffixIcon: Icon(Icons.remove_red_eye_outlined)),
          ),

          SizedBox(
            height: 15,
          ),
          //agree
          Row(
            children: [
              Checkbox(
                value: true,
                onChanged: (value) {},
              ),
              //Text("I agree to Privacy Policy and Terms of use"),
              Text.rich(TextSpan(children: [
                TextSpan(
                    text: "I agree to ",
                    style: Theme.of(context).textTheme.bodySmall),
                TextSpan(
                    text: "Privacy Policy",
                    style: Theme.of(context)
                        .textTheme
                        .bodyMedium!
                        .apply(color: dark ? Colors.white : Colors.blue)),
                TextSpan(
                    text: " and ",
                    style: Theme.of(context).textTheme.bodySmall),
                TextSpan(
                    text: "Terms of use",
                    style: Theme.of(context)
                        .textTheme
                        .bodyMedium!
                        .apply(color: dark ? Colors.white : Colors.blue)),
              ]))
            ],
          ),

          SizedBox(
            height: 15,
          ),
          SizedBox(
            width: double.infinity,
            child: ElevatedButton(
                onPressed: () => Get.to(() => VerifyEmailScreen()),
                child: Text("Create Account")),
          )
        ],
      ),
    );
  }
}
