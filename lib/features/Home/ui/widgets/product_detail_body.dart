import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:furniture_app/core/helper/spacing.dart';
import 'package:furniture_app/features/Home/data/furniture_model.dart';
import 'package:furniture_app/features/Home/ui/widgets/container_product_details.dart';

class ProductDetailBody extends StatelessWidget {
  const ProductDetailBody({
    super.key, required this.furnitureModel,
  });
    final FurnitureModel furnitureModel;
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        verticalSpace(20),
        Center(
          child: Image.network(
           furnitureModel.imageUrl,
            height: 264.h,
            width: 264.w,
          ),
        ),
        verticalSpace(24),
         ContainerProductDetails(furnitureModel:furnitureModel ,)
      ],
    );
  }
}
