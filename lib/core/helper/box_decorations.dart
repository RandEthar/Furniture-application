


  import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

BoxDecoration boxDecorations() {
    return BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(14.r),
        boxShadow:  [
            BoxShadow(
      color: Colors.black.withOpacity(0.08), 
      offset:const  Offset(4, 4), 
      blurRadius: 12, 
      spreadRadius: 2,
    ),
        ]);
  }
