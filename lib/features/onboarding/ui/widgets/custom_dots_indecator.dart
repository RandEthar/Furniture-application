import 'package:flutter/material.dart';
import 'package:furniture_app/core/theming/colors.dart';

class CustomDotsIndecator extends StatelessWidget {
  const CustomDotsIndecator({super.key, required this.isActive, required this.height, required this.width, required this.radius,});
  final bool isActive;
  final double height;
  final double width;
 final double radius;
  @override
  Widget build(BuildContext context) {
   return AnimatedContainer(
    duration:const  Duration(milliseconds: 300),
    height: height,width:width,
    decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(radius)
       , color:isActive?   ColorsManeger.buttonGreenTeal: ColorsManeger.lightGray
    ),
   );
  }
}
