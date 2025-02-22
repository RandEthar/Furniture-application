import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:furniture_app/core/helper/spacing.dart';
import 'package:furniture_app/core/theming/colors.dart';
import 'package:furniture_app/core/theming/styles.dart';
import 'package:furniture_app/features/Home/ui/widgets/rating_and_number_of_view.dart';

import 'package:furniture_app/features/Home/ui/widgets/stack_Item.dart';

class ListViewItem extends StatelessWidget {
  const ListViewItem({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 246.h,
      width: 152.w,
      decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(14.r),
          boxShadow: const [
            BoxShadow(
                offset: Offset(0, 2), blurRadius: 16, color: Color(0xffE5E5E5))
          ]),
      child: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const StackItem(),
            verticalSpace(10),
            Text(
              "EKERÖ",
              style: TextStyles.manrope14RegularextradarkGray.copyWith(
                color: ColorsManeger.dimGray,
              ),
            ),
           // verticalSpace(4),
            Text(
              "\$230.00",
              style: TextStyles.manrope16BoldWhite
                  .copyWith(color: ColorsManeger.dimGray, fontSize: 20.sp),
            ),
            Text(
              "\$512.58",
              style: TextStyles.manrope12RegulardimGray.copyWith(
             decorationColor:  ColorsManeger.dimGray,
                   decoration: TextDecoration.lineThrough,),
            ),
           //  verticalSpace(4),
           const  RatingAndNumberOfView()
          ],
        ),
      ),
    );
  }
}


