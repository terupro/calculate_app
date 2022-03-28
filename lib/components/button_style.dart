import 'package:calculate_app/config/config.dart';
import 'package:flutter/material.dart';

Widget buttonStyle(VoidCallback? press, String label) {
  return OutlinedButton(
    child: Text(label),
    style: kOutlineButtonStyle,
    onPressed: press,
  );
}
