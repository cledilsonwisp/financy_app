import 'package:financy_app/core/constants/app_colors.dart';
import 'package:flutter/material.dart';

class AppTheme {
  AppTheme._();
  static ThemeData defaultTheme() => ThemeData(
        inputDecorationTheme: const InputDecorationTheme(
          focusedBorder: OutlineInputBorder(
            borderSide: BorderSide(color: AppColors.greenOne),
            borderRadius: BorderRadius.all(Radius.circular(8)),
          ),
        ),
      );
}
