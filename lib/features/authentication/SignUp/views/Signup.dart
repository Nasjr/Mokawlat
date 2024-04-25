import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';
import 'package:mokawlat/common/styles/spacingStyles.dart';
import 'package:mokawlat/common/widgets/TextFormWidget.dart';
import 'package:mokawlat/features/authentication/Login/views/Widgets/loginFooter.dart';
import 'package:mokawlat/features/authentication/VerifyEmail/views/VerifyEmail.dart';
import 'package:mokawlat/utils/constants/colors.dart';
import 'package:mokawlat/utils/constants/sizes.dart';
import 'package:mokawlat/utils/constants/text_strings.dart';
import 'package:mokawlat/utils/helpers/helper_functions.dart';
import '../../../../common/widgets/DividerWidget.dart';

class SignUpScreen extends StatelessWidget {
  const SignUpScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(elevation: 0),
      body: SingleChildScrollView(
        child: Padding(
          padding: MspacingStyle.paddingNoAppBarHeight,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // Header
              Text(
                MTexts.signupTitle,
                style: Theme.of(context).textTheme.headlineMedium,
              ),
              SizedBox(
                height: MSizes.spaceBtwSections.h,
              ),
              // Form
              const SignupWidget(),
              // Divider
              DividerWidget(
                dividerText: MTexts.orSignUpWith.capitalize!,
              ),
              SizedBox(
                height: MSizes.spaceBtwSections.h,
              ),
              // Footer
              const FooterWidget()
            ],
          ),
        ),
      ),
    );
  }
}

class SignupWidget extends StatelessWidget {
  const SignupWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final bool dark = MHelperFunctions.isDarkMode(context);
    return Form(
        child: Column(
      children: [
        Row(
          children: [
            const Expanded(
              child: CustomTextFormField(
                  prefixIcon: Icon(Iconsax.profile_circle),
                  labelText: 'First Name'),
            ),
            SizedBox(
              width: MSizes.sm.w,
            ),
            const Expanded(
              child: CustomTextFormField(
                  prefixIcon: Icon(Iconsax.profile_circle),
                  labelText: 'Last Name'),
            ),
          ],
        ),
        SizedBox(
          height: MSizes.spaceBtwInputFields.h,
        ),
        const CustomTextFormField(
            prefixIcon: Icon(Iconsax.profile_2user), labelText: 'User Name'),
        SizedBox(
          height: MSizes.spaceBtwInputFields.h,
        ),
        const CustomTextFormField(
            prefixIcon: Icon(Iconsax.direct), labelText: 'Email'),
        SizedBox(
          height: MSizes.spaceBtwInputFields.h,
        ),
        const CustomTextFormField(
            prefixIcon: Icon(Iconsax.call), labelText: 'Phone Number'),
        SizedBox(
          height: MSizes.spaceBtwInputFields.h,
        ),
        CustomTextFormField(
          prefixIcon: const Icon(Iconsax.lock),
          labelText: 'Password',
          suffixIcon:
              IconButton(onPressed: () {}, icon: const Icon(Iconsax.eye_slash)),
        ),
        SizedBox(
          height: MSizes.spaceBtwSections.h,
        ),
        Row(
          children: [
            SizedBox(
                height: 24,
                width: 24,
                child: Checkbox(value: true, onChanged: (value) {})),
            const SizedBox(
              width: MSizes.md,
            ),
            Expanded(
              child: Text.rich(TextSpan(children: [
                TextSpan(
                    text: '${MTexts.iAgreeTo} ',
                    style: Theme.of(context).textTheme.bodySmall),
                TextSpan(
                    text: '${MTexts.privacyPolicy} ',
                    style: Theme.of(context).textTheme.bodyMedium!.apply(
                          color: dark ? MColors.white : MColors.primary,
                          decoration: TextDecoration.underline,
                          decorationColor:
                              dark ? MColors.white : MColors.primary,
                        )),
                TextSpan(
                    text: '${MTexts.and} ',
                    style: Theme.of(context).textTheme.bodySmall),
                TextSpan(
                    text: '${MTexts.termsOfUse} ',
                    style: Theme.of(context).textTheme.bodyMedium!.apply(
                          color: dark ? MColors.white : MColors.primary,
                          decoration: TextDecoration.underline,
                          decorationColor:
                              dark ? MColors.white : MColors.primary,
                        )),
              ])),
            ),
          ],
        ),
        SizedBox(
          height: MSizes.spaceBtwSections.h,
        ),
        SizedBox(
            width: double.infinity,
            child: OutlinedButton(
                onPressed: () {
                  Get.to(() => const VerifyEmail());
                },
                child: const Text(MTexts.createAccount))),
        SizedBox(
          height: MSizes.spaceBtwItems.h,
        ),
      ],
    ));
  }
}
