
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:furniture_app/core/theming/colors.dart';
import 'package:furniture_app/core/theming/styles.dart';

class SpecialOffersSeeMore extends StatelessWidget {
  const SpecialOffersSeeMore({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding:EdgeInsets.symmetric(horizontal: 16.w),
      child: Row(children: [
       Text('Special Offers',style: TextStyles.manrope16BoldWhite.copyWith(
        fontSize: 24.sp,color: ColorsManeger.dimGray
       ),),
       const Spacer(),
       Text('See More',style: TextStyles.manrope16BoldWhite.copyWith(
        fontSize: 14.sp,color: ColorsManeger.buttonGreenTeal,
        decoration: TextDecoration.underline,
        decorationColor:  ColorsManeger.buttonGreenTeal,decorationThickness: 2.5
       ),),
      
      
      ],),
    );
  }
}