import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:furniture_app/core/theming/colors.dart';
import 'package:furniture_app/core/theming/styles.dart';
import 'package:furniture_app/core/widgets/button_app.dart';
import 'package:furniture_app/features/Home/ui/widgets/highlight.dart';

class CarouselSliderItem extends StatelessWidget {
  const CarouselSliderItem({super.key, required this.pathImage});
  final String pathImage;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        
        Image.asset(
          pathImage,
          width: double.infinity,
          height:200,
          fit: BoxFit.cover, 
        ),
       const Highlight(),
        Positioned(
         left: 20,top: 30,
          child: Text("Celebrate The \nSeason With Us!",style: TextStyles.manrope16BoldWhite.copyWith(
            fontSize: 21
          ),),
        )
        , Positioned(
         left: 20,top: 95,
          child: Text("Get discounts up to 75% for\n furniture &  decoration",style: TextStyles.manrope12RegulardimGray.copyWith(
           color: Colors.white
          ),),
        ), Positioned(
            left: 20,bottom: 30,
          child: ButtonApp(text: 'Shop Now',textColor:ColorsManeger.buttonGreenTeal ,
          backgroundColor: Colors.white,borderRadius: BorderRadius.circular(42.r),
          width: 95.w,height:30.h,onPressed: (){
             
          },textStyle: TextStyles.manrope16BoldWhite.copyWith(
          color: ColorsManeger.buttonGreenTeal,fontSize: 12.sp
        ) ,),
        )
      ],
    );
  }
}




