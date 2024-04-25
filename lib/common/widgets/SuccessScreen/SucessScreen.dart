
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';
import 'package:mokawlat/utils/constants/sizes.dart';
import 'package:mokawlat/utils/constants/text_strings.dart';
import 'package:mokawlat/utils/helpers/helper_functions.dart';

class SuccessScreen extends StatelessWidget {
  SuccessScreen(
      {super.key,
      this.resendEmailText,
      required this.image,
      required this.title,
      required this.subtitle,
      this.onPressed});
  final String image, title, subtitle;
  String? resendEmailText;
  final VoidCallback? onPressed;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        elevation: 0,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.only(
              left: MSizes.defaultSpace.w,
              right: MSizes.defaultSpace.w,
              bottom: MSizes.defaultSpace.h),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              // Image
              Image(
                image: AssetImage(image),
                width: MHelperFunctions.screenWidth() * 0.6,
              ),
              SizedBox(
                height: MSizes.spaceBtwSections.h,
              ),
              // Text
              Text(
                title,
                style: Theme.of(context).textTheme.headlineMedium,
                textAlign: TextAlign.center,
              ),
              SizedBox(
                height: MSizes.spaceBtwItems.h,
              ),

              Text(
                subtitle,
                style: Theme.of(context).textTheme.labelMedium,
                textAlign: TextAlign.center,
              ),
              SizedBox(
                height: MSizes.spaceBtwSections.h,
              ),
              // Divider
              SizedBox(
                  width: double.infinity,
                  child: ElevatedButton(
                      onPressed: onPressed,
                      child: const Text(MTexts.tContinue))),
              if (resendEmailText != null)
                const SizedBox(
                  height: MSizes.spaceBtwItems,
                ),
              if (resendEmailText != null)
                TextButton(onPressed: () {}, child: Text(resendEmailText!))
            ],
          ),
        ),
      ),
    );
  }
}
