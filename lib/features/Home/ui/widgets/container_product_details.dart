import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:furniture_app/core/helper/spacing.dart';
import 'package:furniture_app/core/theming/colors.dart';
import 'package:furniture_app/core/theming/styles.dart';
import 'package:furniture_app/features/Home/data/furniture_model.dart';
import 'package:furniture_app/features/Home/ui/widgets/rating_and_number_of_view.dart';
import 'package:furniture_app/features/Home/ui/widgets/row_price_product_details.dart';

class ContainerProductDetails extends StatelessWidget {
  const ContainerProductDetails({super.key, required this.furnitureModel});
  final FurnitureModel furnitureModel;
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
//height: 68.h,
        width: double.infinity,
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
        ),
        child: Padding(
          padding: const EdgeInsets.all(16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                furnitureModel.name,
                style: TextStyles.manrope12RegulardimGray.copyWith(
                  fontSize: 16.sp,
                ),
              ),
              verticalSpace(4),
              RowPriceProductDetails(
                price: furnitureModel.price,
                oldPrice: furnitureModel.oldPrice,
              ),
              RatingAndNumberOfView(
                rating: furnitureModel.rating,
                reviews: furnitureModel.reviews,
              ),
              verticalSpace(14),
              Text(
                maxLines: 3,
                furnitureModel.description,
                style: TextStyles.manrope14RegularextradarkGray
                    .copyWith(fontSize: 16.sp, color: ColorsManeger.dimGray),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
