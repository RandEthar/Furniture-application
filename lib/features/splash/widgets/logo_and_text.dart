import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:furniture_app/core/helper/spacing.dart';
import 'package:furniture_app/core/routing/routes.dart';

import 'package:furniture_app/core/theming/styles.dart';

class LogoAndText extends StatefulWidget {
  const LogoAndText({
    super.key,
  });

  @override
  State<LogoAndText> createState() => _LogoAndTextState();
}

class _LogoAndTextState extends State<LogoAndText>
    with SingleTickerProviderStateMixin {
  late AnimationController animationController;
  late Animation<double> scaleAnimationLogo;
  late Animation<Offset> slidingAnimationText;
  @override
  void initState() {
    super.initState();
    animation();
    Future.delayed(Duration(seconds: 3),(){
      return Navigator.pushReplacementNamed(context, Routes.onBoardingScreen);
    });
  }

  @override
  void dispose() {
    super.dispose();
    animationController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ScaleTransition(
          scale: scaleAnimationLogo,
          child: Padding(
            padding: EdgeInsets.only(left: 144.w, right: 144.w, top: 333.h),
            child: Image.asset("assets/images/logo.png"),
          ),
        ),
        verticalSpace(16),
        SlideTransition(
          position: slidingAnimationText,
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 20.w),
            child: Text(
              "HomeHaven",
              style: TextStyles.inter36ExtraBoldWhite,
            ),
          ),
        )
      ],
    );
  }

  void animation() {
    animationController =
        AnimationController(vsync: this, duration: const Duration(seconds: 2));
    scaleAnimationLogo = Tween<double>(begin: 0.4, end: 1.0).animate(
        CurvedAnimation(
            parent: animationController, curve: Curves.easeInOutQuint));

    slidingAnimationText =
        Tween<Offset>(begin: const Offset(0, 20), end: Offset.zero).animate(
            CurvedAnimation(
                parent: animationController, curve: Curves.easeInBack));
    animationController.forward();
  }
}

