import 'package:furniture_app/features/onboarding/data/model.dart';
import 'package:furniture_app/features/onboarding/ui/widgets/pageview_item.dart';

import 'package:flutter/material.dart';

class OnBoardingPageView extends StatelessWidget {
  const OnBoardingPageView({
    super.key,
    required this.controller,
  });
  final PageController controller;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 750.0,
      child: PageView.builder(
        controller: controller,
        itemCount:listPageView.length,
        itemBuilder: (BuildContext context, int itemIndex) {
          return PageviewItem(modelPageView:listPageView[itemIndex] ,);
        },
      ),
    );
  }
}
