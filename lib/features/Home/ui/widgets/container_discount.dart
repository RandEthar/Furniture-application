import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:furniture_app/core/theming/colors.dart';
import 'package:furniture_app/core/theming/styles.dart';

class ContainerDiscount extends StatelessWidget {
  const ContainerDiscount({super.key, required this.discount, required this.width, required this.height});
    final double discount;
    final double  width;
      final double height;
  @override
  Widget build(BuildContext context) {
    return Container(
        width:width,
      height: height,
      // width: 51,
      // height: 20,
      decoration: BoxDecoration(
          color: ColorsManeger.red,
          borderRadius: BorderRadius.only(
              topLeft: Radius.circular(10.r),
              bottomRight: Radius.circular(10.r))),child: Center(child: Text(
                textAlign: TextAlign.center,
                "${discount}% OFF",style: TextStyles.manrope10semiBoldWhite,)),
    );
  }
}
