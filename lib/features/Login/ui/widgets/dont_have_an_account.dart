import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:furniture_app/core/routing/routes.dart';
import 'package:furniture_app/core/theming/colors.dart';

import 'package:furniture_app/core/theming/styles.dart';

class DontHaveAnAccount extends StatelessWidget {
  const DontHaveAnAccount({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: RichText(
          text: TextSpan(children: [
        TextSpan(
            text: "Don’t have an account?",
            style: TextStyles.manrope18RegulardarkGray
                .copyWith(color: ColorsManeger.dimGray, fontSize: 16.sp)),
        TextSpan(
            text: " Register",
            style: TextStyles.manrope18RegulardarkGray.copyWith(
              color: ColorsManeger.buttonGreenTeal,
              fontSize: 16.sp,
            ),
            recognizer: TapGestureRecognizer()
              ..onTap = () {
                Navigator.pushReplacementNamed(context, Routes.registerScreen);
              }),
      ])),
    );
  }
}
