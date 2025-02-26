import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:furniture_app/core/helper/spacing.dart';
import 'package:furniture_app/core/theming/colors.dart';
import 'package:furniture_app/core/theming/styles.dart';
import 'package:iconsax/iconsax.dart';

class ButtonCkechout extends StatelessWidget {
  const ButtonCkechout({super.key});

  @override
  Widget build(BuildContext context) {
    return   Container(
   
      height:45.h,width:double.infinity,
      decoration: BoxDecoration(
        color: ColorsManeger.buttonGreenTeal,
        borderRadius:BorderRadius.circular(14.r)
      ),
      child: TextButton(
       
        onPressed:(){}, child: Center(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
            Text("Proceed To Checkout",style: TextStyles.manrope16BoldWhite,),
            horizontalSpacing(8),
           const Icon(Iconsax.shopping_bag3,color: Colors.white,size: 24,)
          ],),
        )),
    );
  }
  }
