import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

void showSnackBar(BuildContext context, String message, SnackBarType type) {
  final scaffoldMessenger = ScaffoldMessenger.of(context);
  final color = _getColorByType(type);

  scaffoldMessenger.showSnackBar(
    SnackBar(
      backgroundColor: color,
      content: Text(message, textAlign: TextAlign.center),
    ),
  );
}

Color _getColorByType(SnackBarType type) {
  switch (type) {
    case SnackBarType.error:
      return Colors.red;
    case SnackBarType.success:
      return Colors.green;
    case SnackBarType.info:
      return Colors.blue;
    default:
      return Colors.grey;
  }
}

enum SnackBarType { error, success, info }
