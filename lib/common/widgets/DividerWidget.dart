import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:mokawlat/utils/constants/colors.dart';
import 'package:mokawlat/utils/helpers/helper_functions.dart';

class DividerWidget extends StatelessWidget {
  const DividerWidget({
    super.key,
    required this.dividerText,
  });

  final String dividerText;
  @override
  Widget build(BuildContext context) {
    final dark = MHelperFunctions.isDarkMode(context);
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Flexible(
          child: Divider(
            color: dark ? MColors.darkGrey : MColors.grey,
            thickness: 0.5.w,
            indent: 60.w,
            endIndent: 5.w,
          ),
        ),
        Text(dividerText),
        Flexible(
          child: Divider(
            color: dark ? MColors.darkGrey : MColors.grey,
            thickness: 0.5.w,
            indent: 5.w,
            endIndent: 60.w,
          ),
        )
      ],
    );
  }
}
