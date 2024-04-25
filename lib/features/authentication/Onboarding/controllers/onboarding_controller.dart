
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mokawlat/features/authentication/Login/views/Login.dart';

class OnBoardingController extends GetxController {
  static OnBoardingController get instance => Get.find();

  // Variables
  PageController pageController = PageController();
  Rx<int> currPageIndex = 0.obs;
  // Update curr index when page scroll
  void updatePageIndicator(int index) {
    currPageIndex(index);
  }

  // Jump to page when a dot is clicked
  void dotNavigationOnclick(int index) {
    currPageIndex(index);
    pageController.animateToPage(currPageIndex.value,
        curve: Curves.easeInOutCirc,
        duration: const Duration(milliseconds: 400));
  }

  // Jump to NEXT page when a dot is clicked
  void nextPage() {
    if (currPageIndex.value == 2) {
      Get.to(() => LoginScreen());
    } else {
      int page = currPageIndex.value + 1;
      pageController.animateToPage(page,
          curve: Curves.easeInOutCirc,
          duration: const Duration(milliseconds: 400));
    }
  }

  // Jump to Last page when a dot is clicked
  void skipPage() {
    currPageIndex.value = 2;
    pageController.animateToPage(currPageIndex.value,
        curve: Curves.easeInOutCirc,
        duration: const Duration(milliseconds: 400));
  }
}
