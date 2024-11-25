import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:syon_ecommerce_app/features/authentication/screens/login/forget_password_screen.dart';
import 'package:syon_ecommerce_app/features/authentication/screens/signup/signup_screen.dart';
import 'package:syon_ecommerce_app/navigation_menu.dart';
import 'package:syon_ecommerce_app/utils/constants/text_strings.dart';

class LoginForm extends StatelessWidget {
  const LoginForm({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Form(
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 16),
        child: Column(
          children: [
            TextFormField(
              decoration: InputDecoration(
                  prefixIcon: Icon(Icons.email), labelText: STexts.email),
            ),
            SizedBox(
              height: 16,
            ),
            TextFormField(
              decoration: InputDecoration(
                  prefixIcon: Icon(Icons.password), labelText: STexts.passwprd),
            ),
            SizedBox(
              height: 16 / 2,
            ),

            ///Remeber me & Forget password
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    Checkbox(
                      value: true,
                      onChanged: (value) {},
                    ),
                    Text(STexts.rememberMe)
                  ],
                ),
                TextButton(
                    onPressed: () => Get.to(() => ForgetPasswordScreen()),
                    child: Text(STexts.forgetPassword))
              ],
            ),
            SizedBox(
              height: 15,
            ),
            //Sign in Button
            SizedBox(
              width: double.infinity,
              child: ElevatedButton(
                  onPressed: () => Get.to(() => NavigationMenu()),
                  child: Text(STexts.signIn)),
            ),
            SizedBox(
              height: 15,
            ),
            SizedBox(
              width: double.infinity,
              child: OutlinedButton(
                  onPressed: () => Get.to(() => SignupScreen()),
                  child: Text("Create Account")),
            )
          ],
        ),
      ),
    );
  }
}
