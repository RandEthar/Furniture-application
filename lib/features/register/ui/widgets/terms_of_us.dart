import 'package:flutter/material.dart';

import 'package:furniture_app/core/theming/colors.dart';
import 'package:furniture_app/core/theming/styles.dart';

class TermsOfUs extends StatelessWidget {
  const TermsOfUs({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: RichText(
          text: TextSpan(children: [
        TextSpan(
            text:
                "By clicking Create Account, you acknowledge you have read and agreed to our ",
            style: TextStyles.manrope14RegularextradarkGray),
        TextSpan(
            text: "Terms of Use ",
            style: TextStyles.manrope14RegularextradarkGray.copyWith(
              color: ColorsManeger.buttonGreenTeal,
            )),
        TextSpan(
            text: "and",
             style: TextStyles.manrope14RegularextradarkGray),
        TextSpan(
          text: " Privacy Policy",
            style: TextStyles.manrope14RegularextradarkGray.copyWith(
              color: ColorsManeger.buttonGreenTeal,
            )),
      ])),
    );
  }
}
