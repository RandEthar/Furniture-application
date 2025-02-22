
import 'package:flutter/material.dart';
import 'package:furniture_app/core/DI/dependency_injection.dart';
import 'package:furniture_app/core/routing/app_routing.dart';
import 'package:furniture_app/core/routing/routes.dart';
import 'package:firebase_core/firebase_core.dart';
import 'firebase_options.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:furniture_app/core/theming/colors.dart';

void main() async {
  setupLocator();
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  runApp(
    const MyApp(),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(375, 812),
      minTextAdapt: true,
      splitScreenMode: true,
      builder: (_, child) {
        return MaterialApp(
          theme: ThemeData(
            colorScheme: ColorScheme.fromSwatch().copyWith(
                primary: ColorsManeger.buttonGreenTeal.withOpacity(0.5)),
            scaffoldBackgroundColor: Colors.white,
          ),
          onGenerateRoute: AppRouting.onGenerateRoute,
          initialRoute: Routes.splashScreen,
          debugShowCheckedModeBanner: false,
        );
      },
    );
  }
}
