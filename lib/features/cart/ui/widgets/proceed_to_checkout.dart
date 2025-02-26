import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:furniture_app/core/helper/spacing.dart';
import 'package:furniture_app/core/theming/colors.dart';
import 'package:furniture_app/core/theming/styles.dart';

import 'package:furniture_app/features/Home/data/furniture_model.dart';

import 'package:furniture_app/features/cart/cart_cubit/cart_cubit.dart';
import 'package:furniture_app/features/cart/ui/widgets/button_ckechout.dart';

class ProceedToCheckout extends StatelessWidget {
  const ProceedToCheckout({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<CartCubit, CartState>(
      buildWhen: (previes, current) => current is CartSuccess,
      builder: (context, state) {
        if (state is CartSuccess) {
          return Padding(
            padding: EdgeInsets.symmetric(horizontal: 8.w),
            child: Column(
              children: [
                Row(
                  children: [
                    Text(
                      "Items :",
                      style: TextStyles.manrope12RegulardimGray
                          .copyWith(fontSize: 16.sp),
                    ),
                    const Spacer(),
                    Text(
                      "${state.listProduct.length}",
                      style: TextStyles.manrope12RegulardimGray
                          .copyWith(fontSize: 16.sp),
                    )
                  ],
                ),
                verticalSpace(8),
                Row(
                  children: [
                    Text(
                      "Delivery Charge :",
                      style: TextStyles.manrope12RegulardimGray
                          .copyWith(fontSize: 16.sp),
                    ),
                    const Spacer(),
                    Text(
                      "\$10",
                      style: TextStyles.manrope12RegulardimGray
                          .copyWith(fontSize: 16.sp),
                    )
                  ],
                ),
                  verticalSpace(8),
                Row(
                  children: [
                    Text(
                      "Sub Total :",
                      style: TextStyles.manrope12RegulardimGray
                          .copyWith(fontSize: 16.sp),
                    ),
                    const Spacer(),
                    Text(
                      "\$${calculationSubTotal(listProduct:state.listProduct).toStringAsFixed(2)}",
                      style: TextStyles.manrope12RegulardimGray
                          .copyWith(fontSize: 16.sp),
                    )
                  ],
                ),    verticalSpace(8),
               const Divider(
                thickness: 1,
                color:ColorsManeger.grayc2,
               ),
                verticalSpace(20),
                 Row(
                  children: [
                    Text(
                      "Total :",
                      style: TextStyles.manrope18RegulardarkGray.copyWith(
                        color: Colors.black,fontWeight: FontWeight.bold
                      )
                          
                    ),
                    const Spacer(),
                    Text(
                      "\$${(calculationSubTotal(listProduct:state.listProduct)+10).toStringAsFixed(2)}",
                       style: TextStyles.manrope18RegulardarkGray.copyWith(
                        color: Colors.black,fontWeight: FontWeight.bold
                      )
                    )
                  ],
                ), 
                 verticalSpace(20),
          const   ButtonCkechout()


              ],
            ),
          );
        }
        return const Text("");
      },
    );
  }
}

double calculationSubTotal({required List<FurnitureModel> listProduct}) {
  double res = 0.0;
  for (var item in listProduct) {
    res += ((item.quantity) * (item.price));
  }
  return res;
}
