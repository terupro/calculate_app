import 'package:calculate_app/components/button_style.dart';
import 'package:calculate_app/config/config.dart';
import 'package:flutter/material.dart';

Widget valueCard(
    String num, VoidCallback increaseButton, VoidCallback decreaseButton) {
  return Container(
    width: double.infinity,
    height: 80,
    margin: const EdgeInsets.symmetric(horizontal: 20.0),
    decoration: kValueCardStyle,
    child: Container(
      padding: const EdgeInsets.all(10.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Text(
            num,
            style: kNumberLabelStyle,
          ),
          Row(
            children: [
              buttonStyle(decreaseButton, '-1'),
              const SizedBox(width: 10.0),
              buttonStyle(increaseButton, '+1'),
            ],
          ),
        ],
      ),
    ),
  );
}
