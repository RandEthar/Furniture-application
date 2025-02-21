import 'package:flutter/material.dart';
import 'package:furniture_app/core/theming/colors.dart';
import 'package:furniture_app/features/splash/widgets/logo_and_text.dart';

class SplashScreenBody extends StatelessWidget {
  const SplashScreenBody({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration:const BoxDecoration(
          gradient: LinearGradient(colors: [
        ColorsManeger.jungleGreen,
        ColorsManeger.darkGreenTeal
      ],begin:Alignment.topLeft,end:Alignment.bottomRight )),
    
      child: LogoAndText(),
    
    );
  }
}

