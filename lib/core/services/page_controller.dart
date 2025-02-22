import 'package:flutter/material.dart';
import 'package:get/get.dart';

class PageViewController extends GetxController {
  late PageController pageController;
  RxInt currentPage = 0.obs;
  void goToTap({required int indexPage}) {
    currentPage.value = indexPage;
    pageController.jumpToPage(indexPage);
  }

  @override
  void onInit() {
    super.onInit();
    pageController = PageController();
  }

  @override
  void onClose() {
    super.onClose();
    pageController.dispose();
  }
}
