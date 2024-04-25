import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';
import 'package:mokawlat/features/Home/View/NavigationView.dart';
import 'package:mokawlat/features/Home/View/Widgets/MainPage.dart';
import 'package:mokawlat/features/authentication/ForgetPassword/views/ForgetPassword.dart';
import 'package:mokawlat/features/authentication/Login/views/Login.dart';
import 'package:mokawlat/features/authentication/SignUp/views/Signup.dart';
import 'package:mokawlat/utils/constants/sizes.dart';
import 'package:mokawlat/utils/constants/text_strings.dart';

class FormWidget extends StatelessWidget {
  const FormWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: MSizes.spaceBtwSections),
      child: Form(
          child: Column(
        children: [
          TextFormField(
            decoration: const InputDecoration(
                labelText: MTexts.email,
                prefixIcon: Icon(Iconsax.direct_right)),
          ),
          SizedBox(
            height: MSizes.spaceBtwInputFields.h,
          ),
          TextFormField(
            decoration: InputDecoration(
                labelText: MTexts.password,
                prefixIcon: const Icon(Iconsax.password_check),
                suffixIcon: IconButton(
                  icon: const Icon(Iconsax.eye_slash),
                  onPressed: () {},
                )),
          ),
          SizedBox(
            height: MSizes.spaceBtwInputFields / 2.h,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              // Remember me
              Row(
                children: [
                  SizedBox(
                    width: 24.w,
                    height: 24.h,
                    child: Checkbox(
                      value: true,
                      onChanged: (value) {},
                    ),
                  ),
                  SizedBox(
                    width: MSizes.sm.h,
                  ),
                  const Text(MTexts.rememberMe),
                ],
              ),
              const Spacer(),
              // Forget Password
              TextButton(
                  onPressed: () {
                    Get.to(() => const ForgetPasswordScreen());
                  },
                  child: const Text(MTexts.forgetPassword))
            ],
          ),
          SizedBox(
            height: MSizes.spaceBtwInputFields.h,
          ),
          SizedBox(
              width: double.infinity,
              child: ElevatedButton(
                  onPressed: () {
                    Get.to(() => const MainPage());
                  },
                  child: const Text(MTexts.signIn))),
          SizedBox(
            height: MSizes.spaceBtwItems.h,
          ),
          SizedBox(
              width: double.infinity,
              child: OutlinedButton(
                  onPressed: () {
                    Get.to(() => const SignUpScreen());
                  },
                  child: const Text(MTexts.createAccount))),
        ],
      )),
    );
  }
}
