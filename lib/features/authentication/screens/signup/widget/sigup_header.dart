import 'package:flutter/material.dart';
import 'package:syon_ecommerce_app/utils/constants/image_strings.dart';
import 'package:syon_ecommerce_app/utils/constants/text_strings.dart';

class SignUpHeader extends StatelessWidget {
  const SignUpHeader({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          STexts.signupTitle,
          style: Theme.of(context).textTheme.headlineMedium,
        ),
        SizedBox(
          height: 10,
        ),
      ],
    );
  }
}
