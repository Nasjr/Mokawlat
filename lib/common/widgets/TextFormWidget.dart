import 'package:flutter/material.dart';

class CustomTextFormField extends StatelessWidget {
  const CustomTextFormField(
      {super.key, required this.labelText, this.prefixIcon, this.suffixIcon});
  final String labelText;
  final Icon? prefixIcon;
  final IconButton? suffixIcon;
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      expands: false,
      decoration: InputDecoration(
          labelText: labelText, prefixIcon: prefixIcon, suffixIcon: suffixIcon),
    );
  }
}
