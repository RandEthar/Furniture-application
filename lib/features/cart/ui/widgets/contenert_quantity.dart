import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:furniture_app/core/theming/colors.dart';
import 'package:furniture_app/core/theming/styles.dart';

class ContenertQuantity extends StatelessWidget {
  const ContenertQuantity({super.key, required this.quantity});
  final int quantity;

  @override
  Widget build(BuildContext context) {
    return  Container(
         width: 105.w,height: 32.h,
         decoration: BoxDecoration(
             borderRadius: BorderRadius.all(Radius.circular(8.r)),
             border: Border.all(
              color: ColorsManeger.lightGray
             )
         ),
         child:  Padding(
           padding:  EdgeInsets.symmetric(horizontal: 7.w,vertical: 4.h),
           child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
             SvgPicture.asset("asset/svg/minus-icon.svg"),
            Text("1",style: TextStyles.manrope14RegularextradarkGray.copyWith(
              color: ColorsManeger.dimGray,fontSize: 16.sp
            ),)
                    ,   SvgPicture.asset("asset/svg/add-icon.svg"),
           
           
           
           
           ],),
         ),
    );
  }
}