import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:furniture_app/core/helper/spacing.dart';
import 'package:furniture_app/core/services/page_controller.dart';
import 'package:furniture_app/core/theming/colors.dart';
import 'package:furniture_app/core/theming/font_weight_helper.dart';
import 'package:furniture_app/core/theming/styles.dart';
import 'package:furniture_app/features/Home/logic/cubit/home_cubit.dart';
import 'package:furniture_app/features/Home/ui/screens/home_screen.dart';

import 'package:furniture_app/features/cart/ui/cart_screen.dart';
import 'package:get/get.dart';

import 'package:zoom_tap_animation/zoom_tap_animation.dart';

class NavbarApp extends StatelessWidget {
  NavbarApp({super.key});
  final PageViewController contro = Get.put(PageViewController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView(
        physics: const NeverScrollableScrollPhysics(),
        controller: contro.pageController,
        children:  [
          BlocProvider(
            create: (context) => HomeCubit()..featchHomeData(),
            child:const  HomeScreen(),
          ),
        const   CartScreen()
        ],
      ),
      bottomNavigationBar: Container(
        padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 10),
        width: double.infinity,
        height: 68.h,
        decoration: BoxDecoration(
            color: Colors.white,
            boxShadow: [
              BoxShadow(
                offset: const Offset(0, -4),
                blurRadius: 20,
                spreadRadius: 0,
                color: Colors.black.withOpacity(0.08),
              ),
            ],
            borderRadius: BorderRadius.only(
                topLeft: Radius.circular(20.r),
                topRight: Radius.circular(20.r))),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            bottomNavBarItem(context,
                lable: 'Home', icon: 'asset/svg/home-icon.svg', page: 0),
            bottomNavBarItem(context,
                lable: 'Cart', icon: 'asset/svg/cart-icon.svg', page: 1),
            bottomNavBarItem(context,
                lable: 'Profile', icon: 'asset/svg/user-icon.svg', page: 2),
          ],
        ),
      ),
    );
  }
}

Widget bottomNavBarItem(BuildContext context,
    {required String lable, required String icon, required int page}) {
  final PageViewController controller = Get.find<PageViewController>();

  return Obx(() => ZoomTapAnimation(
        onTap: () {
          controller.goToTap(indexPage: page);
        },
        child: Column(
          children: [
            SvgPicture.asset(
              icon,
              height: 26,
              width: 26,
              colorFilter: ColorFilter.mode(
                controller.currentPage.value == page
                    ? ColorsManeger.buttonGreenTeal
                    : ColorsManeger.silverGray,
                BlendMode.srcIn,
              ),
            ),
            verticalSpace(5),
            Text(
              lable,
              style: TextStyles.manrope14RegularextradarkGray.copyWith(
                fontWeight: FontWeightHelper.bold,
                color: controller.currentPage.value == page
                    ? ColorsManeger.buttonGreenTeal
                    : ColorsManeger.silverGray,
              ),
            ),
          ],
        ),
      ));
}
