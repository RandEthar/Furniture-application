import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:furniture_app/core/theming/colors.dart';
import 'package:furniture_app/core/theming/styles.dart';

class CuctomAppBarCar extends StatelessWidget {
  const CuctomAppBarCar({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(
          "My Cart",
          style: TextStyles.manrope16BoldWhite
              .copyWith(fontSize: 24, color: ColorsManeger.dimGray),
        ),
        const Spacer(),
        SvgPicture.asset(
          "asset/svg/notification-icon.svg",
          height: 24.h,
          width: 24.w,
          colorFilter: const ColorFilter.mode(
            ColorsManeger.dimGray,
            BlendMode.srcIn,
          ),
        )
      ],
    );
  }
}
