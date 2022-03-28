import 'package:calculate_app/config/config.dart';
import 'package:flutter/material.dart';

Widget calculateCard(VoidCallback press, String answer, String buttonLabel) {
  return Container(
    margin: const EdgeInsets.symmetric(
      horizontal: 20,
    ),
    padding: const EdgeInsets.only(top: 30, bottom: 30, left: 20),
    decoration: kCalculateCardStyle,
    child: Row(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        ElevatedButton(
          onPressed: press,
          child: Text(
            buttonLabel,
            style: kButtonLabelStyle,
          ),
        ),
        const SizedBox(width: 15.0),
        const Icon(Icons.arrow_circle_right_outlined, size: 30.0),
        const SizedBox(width: 15.0),
        Text(
          answer,
          style: kAnswerLabelStyle,
        ),
      ],
    ),
  );
}
