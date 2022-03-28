import 'package:flutter/material.dart';

const kButtonLabelStyle = TextStyle(fontSize: 20, fontWeight: FontWeight.bold);
const kAnswerLabelStyle =
    TextStyle(fontSize: 35.0, fontWeight: FontWeight.bold);
final kOutlineButtonStyle = OutlinedButton.styleFrom(
  primary: Colors.white,
  shape: RoundedRectangleBorder(
    borderRadius: BorderRadius.circular(10.0),
  ),
  side: const BorderSide(color: Colors.white),
);
const kNumberLabelStyle = TextStyle(
  fontSize: 30.0,
  fontWeight: FontWeight.bold,
);
final kValueCardStyle = BoxDecoration(
  color: Colors.white10,
  borderRadius: BorderRadius.circular(10),
);

final kCalculateCardStyle = BoxDecoration(
  color: Colors.blue.withOpacity(0.6),
  borderRadius: BorderRadius.circular(10.0),
);
