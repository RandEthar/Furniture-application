import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:furniture_app/core/helper/box_decorations.dart';
import 'package:furniture_app/core/helper/spacing.dart';
import 'package:furniture_app/core/theming/colors.dart';
import 'package:furniture_app/core/theming/styles.dart';
import 'package:furniture_app/features/Home/data/furniture_model.dart';
import 'package:furniture_app/features/Home/ui/widgets/rating_and_number_of_view.dart';

import 'package:furniture_app/features/Home/ui/widgets/stack_Item.dart';

class ListViewItemProduct extends StatelessWidget {
  const ListViewItemProduct({super.key, required this.furnitureModel});
 final FurnitureModel furnitureModel;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 246.h,
      width: 152.w,
      decoration: boxDecorations(),
      child: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
           StackItem(furnitureModel: furnitureModel),
            verticalSpace(10),
            Text(
             furnitureModel.name,
              style: TextStyles.manrope14RegularextradarkGray.copyWith(
                color: ColorsManeger.dimGray,
              ),
            ),
           // verticalSpace(4),
            Text(
              "\$${furnitureModel.price}",
              style: TextStyles.manrope16BoldWhite
                  .copyWith(color: ColorsManeger.dimGray, fontSize: 20.sp),
            ),
            Text(
              "\$${furnitureModel.oldPrice}",
              style: TextStyles.manrope12RegulardimGray.copyWith(
             decorationColor:  ColorsManeger.dimGray,
                   decoration: TextDecoration.lineThrough,),
            ),
           //  verticalSpace(4),
           RatingAndNumberOfView(rating: furnitureModel.rating,reviews:furnitureModel.reviews,)
          ],
        ),
      ),
    );
  }

}


