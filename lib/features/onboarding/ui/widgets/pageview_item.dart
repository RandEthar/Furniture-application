import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:furniture_app/core/helper/spacing.dart';
import 'package:furniture_app/core/theming/styles.dart';
import 'package:furniture_app/features/onboarding/data/model.dart';

import 'package:furniture_app/features/onboarding/ui/widgets/text_pageview.dart';

class PageviewItem extends StatelessWidget {
  const PageviewItem({super.key, required this.modelPageView});
final  ModelPageView modelPageView;
  @override
  Widget build(BuildContext context) {
    return Column(children: [ Image.asset(
           modelPageView.pathImage,
            height: 470.h,
            fit: BoxFit.cover,
          ),
          verticalSpace(24),
          TextPageView(
            text:   modelPageView.textOne,
            textStyle: TextStyles.manrope32ExtraBoldBlack,
          ),
          verticalSpace(8),
          TextPageView(
            text:
               modelPageView.textTwo,
            textStyle: TextStyles.manrope18RegulardarkGray,
          ),],);
  }
}