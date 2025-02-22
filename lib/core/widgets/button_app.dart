import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';


import 'package:furniture_app/core/theming/styles.dart';



class ButtonApp extends StatelessWidget {
  const ButtonApp ({super.key, required this.text, required this.height, required this.width, required this.backgroundColor, required this.textColor, required this.onPressed, this.borderRadius, this.textStyle});
  final  String text;
final double height;
final double width;
final Color backgroundColor;
final Color textColor;
final TextStyle? textStyle;
final void Function() onPressed;
final BorderRadiusGeometry ? borderRadius;
  @override
  Widget build(BuildContext context) {
    return Container(
   
      height: height,width: width,
      decoration: BoxDecoration(
        color: backgroundColor,
        borderRadius:borderRadius?? BorderRadius.circular(8.r)
      ),
      child: TextButton(
       
        onPressed:onPressed, child: Text(text,
        style:textStyle??TextStyles.manrope16BoldWhite.copyWith(
          color: textColor
        ) ,)),
    );
  }
}
// ColorsManeger.buttonGreenTeal