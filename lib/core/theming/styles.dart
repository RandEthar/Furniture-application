import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:furniture_app/core/theming/colors.dart';
import 'package:furniture_app/core/theming/font_weight_helper.dart';

import 'package:google_fonts/google_fonts.dart';

class TextStyles{

static   TextStyle inter36ExtraBoldWhite=GoogleFonts.inter(
    color: Colors.white,
    fontWeight: FontWeightHelper.extraBold,
    fontSize: 36.sp
  );
  static   TextStyle manrope10semiBoldWhite=GoogleFonts.manrope(
    color: Colors.white,
    fontWeight: FontWeightHelper.semiBold,
    fontSize: 10.sp
  );
static   TextStyle manrope32ExtraBoldBlack=GoogleFonts.manrope(
    color: Colors.black,
    fontWeight: FontWeightHelper.extraBold,
    fontSize: 32.sp
  );
  static   TextStyle manrope16BoldWhite=GoogleFonts.manrope(
    color: Colors.white,
    fontWeight: FontWeightHelper.bold,
    fontSize: 16.sp
  );
static   TextStyle manrope18RegulardarkGray=GoogleFonts.manrope(
    color: ColorsManeger.darkGray,
    fontWeight: FontWeightHelper.regular,
    fontSize: 18.sp
  );

  static   TextStyle manrope14RegularextradarkGray=GoogleFonts.manrope(
    color: ColorsManeger.extradarkGray,
    fontWeight: FontWeightHelper.regular,
    fontSize: 14.sp
  );
  static   TextStyle manrope12RegulardimGray=GoogleFonts.manrope(
    color: ColorsManeger.dimGray,
    fontWeight: FontWeightHelper.regular,
    fontSize: 12.sp
  );
}