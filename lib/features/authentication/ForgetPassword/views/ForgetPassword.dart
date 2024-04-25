import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';
import 'package:mokawlat/common/widgets/SuccessScreen/SucessScreen.dart';
import 'package:mokawlat/features/authentication/Login/views/Login.dart';
import 'package:mokawlat/utils/constants/image_strings.dart';
import 'package:mokawlat/utils/constants/sizes.dart';
import 'package:mokawlat/utils/constants/text_strings.dart';
import '../../../../common/widgets/DividerWidget.dart';

class ForgetPasswordScreen extends StatelessWidget {
  const ForgetPasswordScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        elevation: 0,
        actions: [
          IconButton(
              onPressed: () {
                Get.offAll(() => const LoginScreen());
              },
              icon: const Icon(CupertinoIcons.clear)),
          const SizedBox(
            width: 5,
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.only(
              left: MSizes.defaultSpace,
              right: MSizes.defaultSpace,
              bottom: MSizes.defaultSpace,
              top: MSizes.appBarHeight),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              // Header
              Text(
                MTexts.forgetPassword,
                style: Theme.of(context).textTheme.headlineLarge,
              ),
              const SizedBox(
                height: MSizes.spaceBtwItems,
              ),
              Text(
                MTexts.forgetPasswordSubTitle,
                style: Theme.of(context).textTheme.labelMedium,
              ),
              const SizedBox(
                height: MSizes.spaceBtwSections * 3,
              ),
              // Form
              Form(
                  child: Column(
                children: [
                  TextFormField(
                    decoration: const InputDecoration(
                        labelText: MTexts.email,
                        prefixIcon: Icon(Iconsax.direct_right)),
                  ),
                  const SizedBox(
                    height: MSizes.spaceBtwSections,
                  ),
                  SizedBox(
                      width: double.infinity,
                      child: ElevatedButton(
                          onPressed: () {
                            // Reset Passowrd Screen
                            Get.to(() => SuccessScreen(
                                  resendEmailText: MTexts.resendEmail,
                                  image: MImages.deliveredEmailIllustration,
                                  title: MTexts.changeYourPasswordTitle,
                                  subtitle: MTexts.changeYourPasswordSubTitle,
                                  onPressed: () =>
                                      Get.offAll(() => const LoginScreen()),
                                ));
                          },
                          child: const Text(MTexts.done))),
                ],
              )),
              // button
            ],
          ),
        ),
      ),
    );
  }
}
