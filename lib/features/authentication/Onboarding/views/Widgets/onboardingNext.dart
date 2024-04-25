
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:iconsax/iconsax.dart';
import 'package:mokawlat/features/authentication/Login/controllers/loginController.dart';
import 'package:mokawlat/features/authentication/Onboarding/controllers/onboarding_controller.dart';
import 'package:mokawlat/utils/constants/colors.dart';
import 'package:mokawlat/utils/constants/sizes.dart';
import 'package:mokawlat/utils/device/device_utility.dart';
import 'package:mokawlat/utils/helpers/helper_functions.dart';

class NextButton extends StatelessWidget {
  const NextButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final dark = MHelperFunctions.isDarkMode(context);
    return Positioned(
        right: MSizes.defaultSpace.w,
        bottom: MDeviceUtils.getBottomNavigationBarHeight().h,
        child: ElevatedButton(
            style: ElevatedButton.styleFrom(
                shape: const CircleBorder(),
                backgroundColor: dark ? MColors.primary : MColors.black),
            onPressed: OnBoardingController.instance.nextPage,
            child: const Icon(Iconsax.arrow_right_3)));
  }
}
