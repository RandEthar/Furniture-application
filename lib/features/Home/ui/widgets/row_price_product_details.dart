import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:furniture_app/core/helper/spacing.dart';
import 'package:furniture_app/core/theming/colors.dart';
import 'package:furniture_app/core/theming/styles.dart';
import 'package:furniture_app/features/Home/ui/widgets/container_discount.dart';

class RowPriceProductDetails extends StatelessWidget {
  const RowPriceProductDetails({super.key, required this.price, required this.oldPrice});
    final double price;
      final double oldPrice;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(
          "\$${price}",
          style: TextStyles.manrope32ExtraBoldBlack,
        ),
        horizontalSpacing(8),
        Text( "\$${oldPrice}",
            style: TextStyles.manrope14RegularextradarkGray
                .copyWith(color: ColorsManeger.dimGray,decoration:TextDecoration.lineThrough,
               decorationColor: ColorsManeger.dimGray )),
                 horizontalSpacing(8),
                  ContainerDiscount(discount:45,height: 20.h,width:60.w ,)
      ],
    );
  }
}
