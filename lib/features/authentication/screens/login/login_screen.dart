// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:syon_ecommerce_app/features/authentication/screens/login/widget/login_form.dart';
import 'package:syon_ecommerce_app/features/authentication/screens/login/widget/login_header.dart';
import 'package:syon_ecommerce_app/utils/constants/image_strings.dart';
import 'package:syon_ecommerce_app/utils/constants/text_strings.dart';
import 'package:syon_ecommerce_app/utils/helpers/helper_functions.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = SHelperFunctions.isDarkMofe(context);
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(16.0),
          child: Column(
            children: [
              LoginHeader(),
              SizedBox(
                height: 16,
              ),
              LoginForm(),

              //DIVEDER
              // Row(
              //   mainAxisAlignment: MainAxisAlignment.center,
              //   children: [
              //     Flexible(
              //       child: Divider(
              //         color: dark
              //             ? const Color.fromARGB(255, 65, 64, 64)
              //             : const Color.fromARGB(255, 192, 188, 188),
              //         thickness: 0.5,
              //         indent: 60,
              //         endIndent: 5,
              //       ),
              //     ),
              //     Flexible(
              //       child: Divider(
              //         color: dark
              //             ? const Color.fromARGB(255, 65, 64, 64)
              //             : const Color.fromARGB(255, 192, 188, 188),
              //         thickness: 0.5,
              //         indent: 60,
              //         endIndent: 5,
              //       ),
              //     ),
              //   ],
              // )
            ],
          ),
        ),
      ),
    );
  }
}
