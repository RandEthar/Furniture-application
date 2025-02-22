import 'package:flutter/material.dart';

import 'package:furniture_app/core/theming/colors.dart';
import 'package:furniture_app/core/theming/styles.dart';

class CustomTextField extends StatelessWidget {
  const CustomTextField({super.key, required this.text, required this.contentPadding,
   this.suffixIcon, this.obscureText, required this.prefixIcon,this.controller, this.validator, this.borderRadius});
   final String text;
   final EdgeInsetsGeometry contentPadding;
  final Widget ? suffixIcon;
 final  bool ?obscureText;
   final Widget  prefixIcon;
     final TextEditingController? controller;
    final  String? Function(String?)? validator;
   final BorderRadius? borderRadius;
  @override
  Widget build(BuildContext context) {
    return TextFormField(
           



      validator: validator,
      controller:controller ,
      obscureText: obscureText??false,
       obscuringCharacter: '*',
       
      style: TextStyles.manrope12RegulardimGray.copyWith(fontSize: 16),
      decoration: InputDecoration(
       hintText: text,  
        hintStyle: TextStyles.manrope12RegulardimGray, 
        prefixIcon: prefixIcon,
        suffixIcon:suffixIcon,
        contentPadding: contentPadding,
        border:  outLineInputBorder(),
        errorBorder:outLineInputBorder(color: Colors.red) ,
        enabledBorder: outLineInputBorder(),
        focusedBorder: outLineInputBorder(),
      ),
    );
  }

  OutlineInputBorder outLineInputBorder({Color ?color}) {
    return OutlineInputBorder(
      borderRadius:borderRadius?? BorderRadius.circular(12),
      borderSide:  BorderSide(color:color?? ColorsManeger.lightGray),
    );
  }
}
