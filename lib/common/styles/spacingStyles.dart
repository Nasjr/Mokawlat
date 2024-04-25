import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:mokawlat/utils/constants/sizes.dart';

class MspacingStyle {
  static EdgeInsetsGeometry paddingWithAppBarHeight = EdgeInsets.only(
      left: MSizes.defaultSpace.w,
      right: MSizes.defaultSpace.w,
      top: MSizes.appBarHeight.h,
      bottom: MSizes.defaultSpace.h);

  static EdgeInsetsGeometry paddingNoAppBarHeight = EdgeInsets.only(
      left: MSizes.defaultSpace.w,
      right: MSizes.defaultSpace.w,
      bottom: MSizes.defaultSpace.h);
}
