


import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:furniture_app/core/theming/colors.dart';
import 'package:furniture_app/features/Home/data/furniture_model.dart';
import 'package:furniture_app/features/Home/ui/widgets/container_discount.dart';

class StackItem extends StatelessWidget {
  const StackItem({
    super.key, required this.furnitureModel,
  });
   final FurnitureModel furnitureModel;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Image.network(furnitureModel.imageUrl,height: 120.h,width: 120.w,loadingBuilder: (context, child, loadingProgress) {
        return   loadingProgress==null?child:const SizedBox(
          height: 24,width: 24,
          child: Center(child: CircularProgressIndicator(
             color: ColorsManeger.buttonGreenTeal,
          )),
        );
        },),
      Positioned(bottom: 0,
         child: ContainerDiscount(discount:furnitureModel.discount ,))
      ],
    );
  }
}