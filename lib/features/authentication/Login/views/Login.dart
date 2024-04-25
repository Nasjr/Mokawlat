
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mokawlat/common/styles/spacingStyles.dart';
import 'package:mokawlat/features/authentication/Login/controllers/loginController.dart';
import 'package:mokawlat/features/authentication/Login/views/Widgets/loginFooter.dart';
import 'package:mokawlat/features/authentication/Login/views/Widgets/loginForm.dart';
import 'package:mokawlat/features/authentication/Login/views/Widgets/loginHeader.dart';
import 'package:mokawlat/utils/constants/sizes.dart';
import 'package:mokawlat/utils/constants/text_strings.dart';
import '../../../../common/widgets/DividerWidget.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    Get.put(LoginController());
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: MspacingStyle.paddingWithAppBarHeight,
          child: const Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              // Header
              HeaderWidget(),
              // Form
              FormWidget(),
              // Divider
              DividerWidget(
                dividerText: MTexts.orSignInWith,
              ),
              SizedBox(
                height: MSizes.spaceBtwItems,
              ),
              // Footer
              FooterWidget()
            ],
          ),
        ),
      ),
    );
  }
}
