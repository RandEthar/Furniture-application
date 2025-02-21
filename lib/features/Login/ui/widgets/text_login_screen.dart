import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:furniture_app/core/helper/spacing.dart';
import 'package:furniture_app/core/theming/colors.dart';
import 'package:furniture_app/core/theming/styles.dart';

class TextLoginScreen extends StatelessWidget {
  const TextLoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        verticalSpace(24),
        Text(
          "Welcome Back!",
          style: TextStyles.manrope32ExtraBoldBlack,
        ),
        verticalSpace(8),
        Text(
          "Enter your email to start shopping and get\n awesome deals today!!",
          style: TextStyles.manrope18RegulardarkGray
              .copyWith(fontSize: 16.sp, color: ColorsManeger.extradarkGray),
        ),verticalSpace(32),
      ],
    );
  }
}
