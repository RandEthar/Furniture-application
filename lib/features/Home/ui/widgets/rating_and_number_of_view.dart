import 'package:flutter/material.dart';

import 'package:flutter_svg/flutter_svg.dart';
import 'package:furniture_app/core/helper/spacing.dart';

import 'package:furniture_app/core/theming/styles.dart';

class RatingAndNumberOfView extends StatelessWidget {
  const RatingAndNumberOfView({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        SvgPicture.asset(
          "assets/svg/Star.svg",
          height: 18,
          width: 18,
        ),
        horizontalSpacing(4),
        Text("4.9 (256)", style: TextStyles.manrope12RegulardimGray),
      ],
    );
  }
}
