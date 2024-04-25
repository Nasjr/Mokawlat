import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../constants/colors.dart';
import '../../constants/sizes.dart';

/* -- Light & Dark Outlined Button Themes -- */
class MOutlinedButtonTheme {
  MOutlinedButtonTheme._(); //To avoid creating instances

  /* -- Light Theme -- */
  static final lighOutlinedButtonTheme = OutlinedButtonThemeData(
    style: OutlinedButton.styleFrom(
      elevation: 0,
      foregroundColor: MColors.dark,
      side: const BorderSide(color: MColors.borderPrimary),
      textStyle: TextStyle(
          fontSize: 16.sp, color: MColors.black, fontWeight: FontWeight.w600),
      padding: EdgeInsets.symmetric(
          vertical: MSizes.buttonHeight.h, horizontal: 20.w),
      shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(MSizes.buttonRadius.w)),
    ),
  );

  /* -- Dark Theme -- */
  static final darkOutlinedButtonTheme = OutlinedButtonThemeData(
    style: OutlinedButton.styleFrom(
      foregroundColor: MColors.light,
      side: const BorderSide(color: MColors.borderPrimary),
      textStyle: TextStyle(
          fontSize: 16.sp,
          color: MColors.textWhite,
          fontWeight: FontWeight.w600),
      padding: EdgeInsets.symmetric(
          vertical: MSizes.buttonHeight.h, horizontal: 20.w),
      shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(MSizes.buttonRadius.w)),
    ),
  );
}
