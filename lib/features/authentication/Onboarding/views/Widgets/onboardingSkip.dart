
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:mokawlat/features/authentication/Login/controllers/loginController.dart';
import 'package:mokawlat/features/authentication/Onboarding/controllers/onboarding_controller.dart';
import 'package:mokawlat/utils/constants/sizes.dart';
import 'package:mokawlat/utils/device/device_utility.dart';

class OnboardingSkip extends StatelessWidget {
  const OnboardingSkip({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Positioned(
        top: MDeviceUtils.getAppBarHeight().h,
        right: MSizes.defaultSpace.w,
        child: TextButton(
          onPressed: OnBoardingController.instance.skipPage,
          child: const Text('Skip'),
        ));
  }
}
