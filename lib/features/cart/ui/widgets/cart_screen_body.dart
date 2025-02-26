

import 'package:flutter/material.dart';
import 'package:furniture_app/core/helper/spacing.dart';
import 'package:furniture_app/features/cart/ui/widgets/cuctom_app_bar_car.dart';
import 'package:furniture_app/features/cart/ui/widgets/list_cart.dart';
import 'package:furniture_app/features/cart/ui/widgets/proceed_to_checkout.dart';


class   CartScreenBody extends StatelessWidget {
  const  CartScreenBody({super.key});

  @override
  Widget build(BuildContext context) {
    return  SafeArea(child: Padding(
      padding:const  EdgeInsets.symmetric(horizontal: 16),
    
      child: SingleChildScrollView(
        child: Column(children: [
         verticalSpace(8),
         const CuctomAppBarCar(),
           verticalSpace(24),
        const  ListCart(),
              verticalSpace(35),
             const  ProceedToCheckout()
        
          ],),
      ),
    ));
  }
}