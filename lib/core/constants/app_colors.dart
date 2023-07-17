import 'package:flutter/material.dart';

class AppColors {
  AppColors._();

  static const Color greenOne = Color(0XFF63B5AF);
  static const Color greenTwo = Color(0XFF438883);
  static const Color white = Color(0XFFFFFFFF);
  static const Color grey = Color(0xFFB5B5B5);
  static const Color darkGrey = Color(0xFF666666);

  static List<Color> greenGradient = [greenOne, greenTwo];
  static List<Color> greyGradient = const [
    Color(0xFFB5B5B5),
    Color(0xFF7F7F7F)
  ];
}
