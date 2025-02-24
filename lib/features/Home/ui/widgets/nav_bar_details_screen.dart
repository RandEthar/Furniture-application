import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:furniture_app/core/helper/spacing.dart';
import 'package:furniture_app/core/theming/colors.dart';
import 'package:furniture_app/core/theming/styles.dart';
import 'package:furniture_app/core/widgets/button_app.dart';
import 'package:furniture_app/features/Home/data/furniture_model.dart';
import 'package:furniture_app/features/Home/ui/widgets/favorite_contenar.dart';


class NavBarDetailsScreen extends StatelessWidget {
  const NavBarDetailsScreen({super.key, required this.furnitureModel});
final FurnitureModel furnitureModel;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 2),
      child: Container(
        height: 68.h,
        width: 375.h,
        decoration: BoxDecoration(
            color: Colors.white,
            boxShadow: [
              BoxShadow(
                offset: const Offset(0, -4),
                blurRadius: 20,
                spreadRadius: 0,
                color: Colors.black.withOpacity(0.08),
              ),
            ],
            borderRadius: const BorderRadius.only(
                topLeft: Radius.circular(24), topRight: Radius.circular(14)),
                ),child: Padding(
                  padding:EdgeInsets.symmetric(horizontal: 16.w,vertical: 12.h),
                  child: Row(
                    children: [
                     FavoriteContenar(furnitureModel:furnitureModel,),
                     horizontalSpacing(16),
                     ButtonApp(text:" Add to Cart",
                     textStyle: TextStyles.manrope16BoldWhite
                     ,height: 43.h
                     ,backgroundColor: ColorsManeger.buttonGreenTeal
                     ,width:278.w,
                     textColor: Colors.white,
                     onPressed: (){},
                     )
                    ],
                  ),
                ),
      ),
    );
  }
}
