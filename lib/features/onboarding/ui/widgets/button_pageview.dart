import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:furniture_app/core/helper/spacing.dart';
import 'package:furniture_app/core/routing/routes.dart';
import 'package:furniture_app/core/theming/colors.dart';
import 'package:furniture_app/core/utils/api_endpoints.dart';
import 'package:furniture_app/core/utils/shared_preferences_singleton.dart';
import 'package:furniture_app/core/widgets/button_app.dart';

class ButtonPageview extends StatelessWidget {
  const ButtonPageview(
      {super.key, required this.pageController, required this.currentPage});
  final PageController pageController;
  final int currentPage;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 16.w),
      child: currentPage == 0
          ? ButtonApp(
              onPressed: () {
                goToNextPage();
              },
              text: "Next",
              height: 43,
              width: double.infinity,
              backgroundColor: ColorsManeger.buttonGreenTeal,
              textColor: Colors.white,
            )
          : Row(
              children: [
                ButtonApp(
                  onPressed: () => backToPreviousPage(),
                  text: "Back",
                  height: 43,
                  width: 150,
                  backgroundColor: Colors.white,
                  textColor: ColorsManeger.buttonGreenTeal,
                ),
                verticalSpace(16),
                ButtonApp(
                  onPressed: () {
                    goToNextPage();
                    if (currentPage == 2) {

                      AppPreferences.setBool(key: ApiEndpoints.isUserOpendApp, value:true);
                      Navigator.pushReplacementNamed(
                          context, Routes.loginScreen);
                    }
                  },
                  text: "Next",
                  height: 43,
                  width: 220,
                  backgroundColor: ColorsManeger.buttonGreenTeal,
                  textColor: Colors.white,
                ),
              ],
            ),
    );
  }

  void goToNextPage() {
    pageController.nextPage(
      duration: const Duration(milliseconds: 500),
      curve: Curves.easeInOut,
    );
  }

  void backToPreviousPage() {
    pageController.previousPage(
      duration: const Duration(milliseconds: 500),
      curve: Curves.easeInOut,
    );
  }
}
