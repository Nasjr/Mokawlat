import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../constants/colors.dart';

class MChipTheme {
  MChipTheme._();

  static ChipThemeData lighChipTheme = ChipThemeData(
    disabledColor: MColors.grey.withOpacity(0.4),
    labelStyle: const TextStyle(color: MColors.black),
    selectedColor: MColors.primary,
    padding: EdgeInsets.symmetric(horizontal: 12.0.w, vertical: 12.h),
    checkmarkColor: MColors.white,
  );

  static ChipThemeData darkChipTheme = ChipThemeData(
    disabledColor: MColors.darkerGrey,
    labelStyle: const TextStyle(color: MColors.white),
    selectedColor: MColors.primary,
    padding: EdgeInsets.symmetric(horizontal: 12.0.w, vertical: 12.h),
    checkmarkColor: MColors.white,
  );
}
