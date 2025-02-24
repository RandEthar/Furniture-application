import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:furniture_app/core/theming/colors.dart';
import 'package:furniture_app/core/theming/styles.dart';

class WishlistCustomAppBar extends StatelessWidget {
  const WishlistCustomAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
    
        const Spacer(),
        Text(
          "My Wishlist",
          style: TextStyles.manrope16BoldWhite
              .copyWith(fontSize: 24, color: ColorsManeger.dimGray),
        ),
        const Spacer(),
        SvgPicture.asset(
          "asset/svg/notification-icon.svg",
          colorFilter: const ColorFilter.mode(
            ColorsManeger.dimGray,
            BlendMode.srcIn,
          ),
        )
      ],
    );
  }
}
