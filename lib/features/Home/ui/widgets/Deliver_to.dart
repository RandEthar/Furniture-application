import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:furniture_app/core/helper/spacing.dart';
import 'package:furniture_app/core/theming/colors.dart';
import 'package:furniture_app/core/theming/font_weight_helper.dart';
import 'package:furniture_app/core/theming/styles.dart';

class DeliverTo extends StatelessWidget {
  const DeliverTo({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding:EdgeInsets.symmetric(horizontal: 16.w),
      child: Row(children: [
        SvgPicture.asset(
            "asset/svg/location-icon.svg",
            height: 20.h,
            width: 20.w,
          ),horizontalSpacing(8)
       ,Text("Deliver to",style: TextStyles.manrope14RegularextradarkGray.copyWith(
        color: ColorsManeger.dimGray
       ),),horizontalSpacing(8),  Expanded( 
        child: Text(
          "3517 W. Gray St. Utica, Pennsylvania",
          style: TextStyles.manrope14RegularextradarkGray.copyWith(
            color: ColorsManeger.dimGray,
            fontWeight: FontWeightHelper.bold,
          ),
          overflow: TextOverflow.ellipsis, 
      
        ),
      ),
      
       horizontalSpacing(8),  SvgPicture.asset(
            "asset/svg/down-icon.svg",
            height: 20.h,
            width: 20.w,
          ),
      ],),
    );
  }
}