import 'package:flutter/material.dart';
import 'package:furniture_app/core/theming/colors.dart';

class CustomDotsIndecator extends StatelessWidget {
  const CustomDotsIndecator({super.key, required this.isActive});
  final bool isActive;
  @override
  Widget build(BuildContext context) {
   return AnimatedContainer(
    duration:const  Duration(milliseconds: 300),
    height: 10,width: 10,
    decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10)
       , color:isActive?   ColorsManeger.buttonGreenTeal: ColorsManeger.lightGray
    ),
   );
  }
}
