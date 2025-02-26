import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:furniture_app/core/helper/spacing.dart';
import 'package:furniture_app/core/routing/routes.dart';
import 'package:furniture_app/core/services/auth.dart';

import 'package:furniture_app/core/theming/styles.dart';
import 'package:furniture_app/core/utils/api_endpoints.dart';
import 'package:furniture_app/core/utils/shared_preferences_singleton.dart';

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
     navigatorToOnBoardingScreen();
  }


 navigatorToOnBoardingScreen() async {
    bool isAppOpened = AppPreferences.getBool(key:ApiEndpoints.isUserOpendApp);
    bool isLoggedIn = await   AuthImple().isCurrentUserLoggedin();
    return Future.delayed(
      const Duration(seconds: 3),
      () {
        if (mounted) {
          return Navigator.pushReplacementNamed(
            context,
            isAppOpened
                ? (isLoggedIn ?Routes.navbarApp : Routes.loginScreen)
                : Routes.onBoardingScreen,
          );
        }
      },
    );
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
            child: Image.asset("asset/images/homehaven.png"),
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

