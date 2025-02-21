import 'package:flutter/material.dart';
import 'package:furniture_app/core/helper/spacing.dart';
import 'package:furniture_app/features/onboarding/ui/widgets/button_pageview.dart';
import 'package:furniture_app/features/onboarding/ui/widgets/dotes_indecator.dart';
import 'package:furniture_app/features/onboarding/ui/widgets/onboarding_pageview.dart';
class OnBoardingScreenBody extends StatefulWidget {
  const OnBoardingScreenBody({super.key});

  @override
  State<OnBoardingScreenBody> createState() => _OnBoardingScreenBodyState();
}
class _OnBoardingScreenBodyState extends State<OnBoardingScreenBody> {
  late PageController pageController;
  int currentPage = 0;

  @override
  void initState() {
    super.initState();
    pageController = PageController();
    pageController.addListener(() {
      setState(() {
        currentPage = pageController.page!.round();
      });
    });
  }
  @override
  void dispose() {
    pageController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          OnBoardingPageView(
            controller: pageController,
          ),
          verticalSpace(32),
          DotesIndecator(
            currentIndex: currentPage,
          ),
          verticalSpace(32),
          ButtonPageview(
            pageController: pageController,
            currentPage: currentPage,
          )
        ],
      ),
    );
  }
}
