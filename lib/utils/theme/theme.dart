
import 'package:flutter/material.dart';
import 'package:mokawlat/utils/theme/custom_themes/appbar_theme.dart';
import 'package:mokawlat/utils/theme/custom_themes/checkbox_theme.dart';
import 'package:mokawlat/utils/theme/custom_themes/chip_theme.dart';
import 'package:mokawlat/utils/theme/custom_themes/elevated_button_theme.dart';
import 'package:mokawlat/utils/theme/custom_themes/outlined_button_theme.dart';
import 'package:mokawlat/utils/theme/custom_themes/text_field_theme.dart';
import 'package:mokawlat/utils/theme/custom_themes/text_theme.dart';

class MAppTheme {
  MAppTheme._();
  static ThemeData lightTheme = ThemeData(
      useMaterial3: true,
      fontFamily: 'Poppins',
      brightness: Brightness.light,
      primaryColor: Colors.blue,
      scaffoldBackgroundColor: Color.fromARGB(255, 241, 240, 240),
      textTheme: MTextTheme.lighTextTheme,
      chipTheme: MChipTheme.lighChipTheme,
      appBarTheme: MAppBarTheme.lightAppBarTheme,
      checkboxTheme: MCheckboxTheme.lightCheckboxTheme,
      elevatedButtonTheme: MElevatedButtonTheme.lighElevatedButtonTheme,
      outlinedButtonTheme: MOutlinedButtonTheme.lighOutlinedButtonTheme,
      inputDecorationTheme: MTextFormFieldTheme.lightInputDecorationTheme);
  static ThemeData darkTheme = ThemeData(
      useMaterial3: true,
      fontFamily: 'Poppins',
      brightness: Brightness.dark,
      primaryColor: Colors.blue,
      scaffoldBackgroundColor: Colors.black,
      textTheme: MTextTheme.darkTextTheme,
      chipTheme: MChipTheme.darkChipTheme,
      appBarTheme: MAppBarTheme.darkAppBarTheme,
      checkboxTheme: MCheckboxTheme.darkCheckboxTheme,
      elevatedButtonTheme: MElevatedButtonTheme.darkElevatedButtonTheme,
      outlinedButtonTheme: MOutlinedButtonTheme.darkOutlinedButtonTheme,
      inputDecorationTheme: MTextFormFieldTheme.darkInputDecorationTheme);
}
