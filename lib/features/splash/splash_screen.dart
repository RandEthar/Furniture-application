import 'package:flutter/material.dart';

import 'package:furniture_app/features/splash/widgets/splash_screen_body.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body:SplashScreenBody(),
    );
  }
}


