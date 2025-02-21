import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:furniture_app/core/helper/spacing.dart';
import 'package:furniture_app/core/theming/colors.dart';
import 'package:furniture_app/core/theming/styles.dart';

class TextRegisterScreen extends StatelessWidget {
  const TextRegisterScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        verticalSpace(24),
        Text(
          "Create Account",
          style: TextStyles.manrope32ExtraBoldBlack,
        ),
        verticalSpace(8),
        Text(
          "Fill in your details below to get started on a\n seamless shopping experience.",
          style: TextStyles.manrope18RegulardarkGray
              .copyWith(fontSize: 16.sp, color: ColorsManeger.extradarkGray),
        ),verticalSpace(32),
      ],
    );
  }
}