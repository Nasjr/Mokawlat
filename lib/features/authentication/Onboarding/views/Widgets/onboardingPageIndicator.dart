
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:mokawlat/features/authentication/Login/controllers/loginController.dart';
import 'package:mokawlat/features/authentication/Onboarding/controllers/onboarding_controller.dart';
import 'package:mokawlat/utils/constants/colors.dart';
import 'package:mokawlat/utils/constants/sizes.dart';
import 'package:mokawlat/utils/device/device_utility.dart';
import 'package:mokawlat/utils/helpers/helper_functions.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class PageIndicator extends StatelessWidget {
  const PageIndicator({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final dark = MHelperFunctions.isDarkMode(context);
    final controller = OnBoardingController.instance;
    return Positioned(
        bottom: MDeviceUtils.getAppBarHeight() + 25.h,
        left: MSizes.defaultSpace,
        child: SmoothPageIndicator(
            effect: ExpandingDotsEffect(
                dotColor: dark ? MColors.light : MColors.dark, dotHeight: 6.h),
            controller: controller.pageController,
            onDotClicked: (index) => controller.dotNavigationOnclick(index),
            count: 3));
  }
}
