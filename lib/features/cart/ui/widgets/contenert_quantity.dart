import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:furniture_app/core/theming/colors.dart';
import 'package:furniture_app/core/theming/styles.dart';
import 'package:furniture_app/features/Home/data/furniture_model.dart';
import 'package:furniture_app/features/cart/cart_cubit/cart_cubit.dart';

class ContenertQuantity extends StatelessWidget {
  const ContenertQuantity({super.key, required this.furnitureModel});
  final FurnitureModel furnitureModel;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 105.w,
      height: 32.h,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.all(Radius.circular(8.r)),
          border: Border.all(color: ColorsManeger.lightGray)),
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 7.w, vertical: 4.h),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            GestureDetector(
                onTap: () {
                  context.read<CartCubit>().decreaseQuantity(furnitureModel);
                },
                child: SvgPicture.asset("asset/svg/minus-icon.svg")),
            BlocBuilder<CartCubit,CartState>(
              buildWhen: (previous, current) => current is UpdatedSuccess,
              builder: (context, state) {
                return Text(
                  "${furnitureModel.quantity}",
                  style: TextStyles.manrope14RegularextradarkGray
                      .copyWith(color: ColorsManeger.dimGray, fontSize: 16.sp),
                );
              },
            ),
            GestureDetector(
                onTap: () {
                  context.read<CartCubit>().increaseQuantity(furnitureModel);
                },
                child: SvgPicture.asset("asset/svg/add-icon.svg")),
          ],
        ),
      ),
    );
  }
}
