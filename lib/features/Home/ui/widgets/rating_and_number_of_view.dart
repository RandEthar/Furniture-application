import 'package:flutter/material.dart';

import 'package:flutter_svg/flutter_svg.dart';
import 'package:furniture_app/core/helper/spacing.dart';

import 'package:furniture_app/core/theming/styles.dart';
import 'package:furniture_app/features/Home/data/furniture_model.dart';

class RatingAndNumberOfView extends StatelessWidget {
  const RatingAndNumberOfView({super.key, required this.furnitureModel});
  final FurnitureModel furnitureModel;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        SvgPicture.asset(
          "asset/svg/Star.svg",
          height: 18,
          width: 18,
        ),
        horizontalSpacing(4),
        Text("${furnitureModel.rating} (${furnitureModel.reviews})", style: TextStyles.manrope12RegulardimGray),
      ],
    );
  }
}
