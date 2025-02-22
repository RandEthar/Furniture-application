import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:furniture_app/core/helper/spacing.dart';
import 'package:furniture_app/core/widgets/text_form_field_app.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: CustomTextField(
            borderRadius: BorderRadius.circular(26),
            text: "Search candles",
            contentPadding: EdgeInsets.symmetric(vertical: 12.h),
            prefixIcon: Padding(
              padding: EdgeInsets.symmetric(horizontal: 16.w, vertical: 12.h),
              child: SvgPicture.asset(
                "asset/svg/search-icon.svg",
                height: 20.h,
                width: 20.w,
              ),
            ),
            suffixIcon: Padding(
              padding: EdgeInsets.symmetric(horizontal: 16.w, vertical: 12.h),
              child: SvgPicture.asset(
                "asset/svg/camera.svg",
                height: 20.h,
                width: 20.w,
              ),
            ),
          ),
        ),
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 16.w, vertical: 12.h),
          child: SvgPicture.asset(
            "asset/svg/notification-icon.svg",
            height: 20.h,
            width: 20.w,
          ),
        ),
      ],
    );
  }
}
