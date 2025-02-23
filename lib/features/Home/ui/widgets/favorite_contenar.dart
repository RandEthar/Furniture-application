import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:furniture_app/core/theming/colors.dart';

import 'package:iconsax/iconsax.dart';

class FavoriteContenar extends StatefulWidget {
  const FavoriteContenar({super.key});

  @override
  State<FavoriteContenar> createState() => _FavoriteContenarState();
}

class _FavoriteContenarState extends State<FavoriteContenar> {
  bool isfav = false;
  @override
  Widget build(BuildContext context) {
    return Container(
        height: 44.h,
        width: 44.h,
        decoration: BoxDecoration(
            color: Colors.white,
            border: Border.all(
              color: ColorsManeger.buttonGreenTeal,
            ),
            borderRadius: BorderRadius.all(Radius.circular(8.r))),
        child: IconButton(
            icon: Icon(
              isfav ? Iconsax.heart5 : Iconsax.heart,
              color: ColorsManeger.buttonGreenTeal,
            ),
            onPressed: () {
              setState(() {
                isfav = !isfav;
              });
            }));
  }
}
