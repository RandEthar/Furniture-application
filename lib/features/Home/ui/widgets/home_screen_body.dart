import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:furniture_app/core/helper/spacing.dart';
import 'package:furniture_app/features/Home/ui/widgets/Deliver_to.dart';
import 'package:furniture_app/features/Home/ui/widgets/carousel_slider.dart';
import 'package:furniture_app/features/Home/ui/widgets/custom_app_bar.dart';

class HomeScreenBody extends StatelessWidget {
  const HomeScreenBody({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Column(children: [
        verticalSpace(20),
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 16.w),
          child:const CustomAppBar(),
        )
        ,  verticalSpace(12),
        const DeliverTo(),
          verticalSpace(24),
        const  CustomCarouselSlider()
      
      ],),
    );
  }
}


