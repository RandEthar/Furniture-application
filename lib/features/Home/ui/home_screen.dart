import 'package:flutter/material.dart';
import 'package:furniture_app/features/Home/ui/widgets/home_screen_body.dart';


class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: Colors.white,
    body:HomeScreenBody() ,
    );
  }
}
