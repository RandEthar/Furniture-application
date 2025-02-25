import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:furniture_app/core/helper/spacing.dart';
import 'package:furniture_app/core/theming/colors.dart';
import 'package:furniture_app/core/theming/styles.dart';
import 'package:furniture_app/core/widgets/button_app.dart';
import 'package:furniture_app/features/Home/data/furniture_model.dart';
import 'package:furniture_app/features/Home/logic/details_cubit/cubit/details_cubit.dart';
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
            topLeft: Radius.circular(24), 
            topRight: Radius.circular(14),
          ),
        ),
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 16.w, vertical: 12.h),
          child: Row(
            children: [
              FavoriteContenar(furnitureModel: furnitureModel),
              horizontalSpacing(16),
              BlocBuilder<DetailsCubit, DetailsState>(
                builder: (context, state) {
                  final isInCart = context.read<DetailsCubit>().inCart(furnitureModel);
return ButtonApp(
  textColor: Colors.black,
  text: isInCart ? "Remove from Cart" : "Add to Cart",
  textStyle: TextStyles.manrope16BoldWhite.copyWith(
   color:  isInCart
      ?ColorsManeger.buttonGreenTeal// لون النص أخضر عندما يكون في السلة
      : Colors.white,
  ),
  height: 43.h,
  backgroundColor: isInCart
      ? ColorsManeger.buttonGreenTeal.withOpacity(0.2) // خلفية رمادية فاتحة عند remove
      : ColorsManeger.buttonGreenTeal,
  width: 278.w,

  onPressed: () {
    context.read<DetailsCubit>().toggleCart(furnitureModel);
  },
);

                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}

