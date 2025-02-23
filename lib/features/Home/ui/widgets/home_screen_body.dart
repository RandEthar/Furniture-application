import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:furniture_app/core/helper/spacing.dart';
import 'package:furniture_app/features/Home/ui/widgets/Deliver_to.dart';
import 'package:furniture_app/features/Home/ui/widgets/carousel_slider.dart';
import 'package:furniture_app/features/Home/ui/widgets/custom_app_bar.dart';

import 'package:furniture_app/features/Home/ui/widgets/list_view_product.dart';
import 'package:furniture_app/features/Home/ui/widgets/special_offers_see_more.dart';
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
        const  CustomCarouselSlider(),
        verticalSpace(24),
       const  SpecialOffersSeeMore(),
        verticalSpace(16),
      Padding(
        padding:  EdgeInsets.only(left: 16.w),
        child: const ListViewProduct(),
      )
      ],),
    );
  }
}


