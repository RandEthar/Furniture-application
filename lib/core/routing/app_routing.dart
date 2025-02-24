import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:furniture_app/core/routing/routes.dart';
import 'package:furniture_app/core/widgets/navbar_app.dart';
import 'package:furniture_app/features/Home/data/furniture_model.dart';
import 'package:furniture_app/features/Home/logic/details_cubit/cubit/details_cubit.dart';
import 'package:furniture_app/features/Home/ui/screens/product_detail.dart';

import 'package:furniture_app/features/Login/logic/cubit/login_cubit.dart';
import 'package:furniture_app/features/Login/ui/login_screen.dart';
import 'package:furniture_app/features/onboarding/ui/onboarding_screen.dart';
import 'package:furniture_app/features/register/logic/cubit/register_cubit.dart';
import 'package:furniture_app/features/register/ui/register_screen.dart';
import 'package:furniture_app/features/splash/splash_screen.dart';

class AppRouting {
  static Route onGenerateRoute(RouteSettings settings) {
    switch (settings.name) {
      case Routes.splashScreen:
        return MaterialPageRoute(builder: (_) => const SplashScreen());
      case Routes.onBoardingScreen:
        return MaterialPageRoute(builder: (_) => const OnboardingScreen());
      case Routes.registerScreen:
        return MaterialPageRoute(
            builder: (_) => BlocProvider(
                  create: (context) => RegisterCubit(),
                  child: const RegisterScreen(),
                ));
      case Routes.loginScreen:
        return MaterialPageRoute(
            builder: (_) => BlocProvider(
                  create: (context) => LoginCubit(),
                  child: const LoginScreen(),
                ));
      case Routes.productDetail:
        return MaterialPageRoute(builder: (_) {
          return BlocProvider(
            create: (context) => DetailsCubit(),
            child: ProductDetailScreen(
              furnitureModel: settings.arguments as FurnitureModel,
            ),
          );
        });

      case Routes.navbarApp:
        return MaterialPageRoute(builder: (_) => NavbarApp());
      default:
        return MaterialPageRoute(
            builder: (_) => const Scaffold(
                  body: Text("Page not found"),
                ));
    }
  }
}
//OnboardingScreen