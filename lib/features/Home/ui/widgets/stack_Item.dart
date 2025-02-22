


import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:furniture_app/features/Home/ui/widgets/container_discount.dart';

class StackItem extends StatelessWidget {
  const StackItem({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Image.asset("assets/images/itemone.png",height: 120.h,width: 120.w,),
      const  Positioned(bottom: 0,
         child: ContainerDiscount())
      ],
    );
  }
}