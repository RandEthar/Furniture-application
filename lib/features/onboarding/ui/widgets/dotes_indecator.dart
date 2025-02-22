import 'package:flutter/material.dart';
import 'package:furniture_app/features/onboarding/data/model.dart';
import 'package:furniture_app/features/onboarding/ui/widgets/custom_dots_indecator.dart';

class DotesIndecator extends StatelessWidget {
  const DotesIndecator({super.key, required this.currentIndex, required this.height, required this.width, required this.radius});
  final int currentIndex;
  final double height;
  final double width;
 final double radius;
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children:List.generate(listPageView.length, (index){
      return  Padding(
        padding:const  EdgeInsets.only(right: 8),
        child: CustomDotsIndecator(isActive:index==currentIndex,height:height,width: width,radius:radius,),
      );
    }),);
  }
}