import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:furniture_app/core/helper/spacing.dart';

import 'package:furniture_app/features/wishlist/ui/widgets/wishlist_custom_app_bar.dart';
import 'package:furniture_app/features/wishlist/ui/widgets/wishlist_product_list.dart';

class WishlistBody extends StatelessWidget {
  const WishlistBody ({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding:  EdgeInsets.symmetric(horizontal: 16.w),
      child:  Column(children: [
      verticalSpace(10),
         const  WishlistCustomAppBar(),
           verticalSpace(10),
    const  WishlistProductList()
      
      
      
      
      
      
      
      
      
      
      
      
      ],),
    );
  }
}