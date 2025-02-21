


import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:furniture_app/core/theming/colors.dart';
import 'package:furniture_app/core/theming/styles.dart';

class OrLogIn extends StatelessWidget {
  const OrLogIn({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
            child:
                Divider(thickness: 1, color: ColorsManeger.silverGray)),
        Padding(
          padding: EdgeInsets.symmetric(
              horizontal: 8.w), // مسافة بين الخطين والنص
          child: Text(
            "OR",
            style: TextStyles.manrope12RegulardimGray,
          ),
        ),
        Expanded(
            child:
                Divider(thickness: 1, color: ColorsManeger.silverGray)),
      ],
    );
  }
}