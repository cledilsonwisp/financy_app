import 'package:financy_app/core/constants/app_colors.dart';
import 'package:financy_app/core/constants/app_text_styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';

class SplashPage extends StatelessWidget {
  const SplashPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: [
              AppColors.greenLightOne,
              AppColors.greenLightTwo,
            ],
          ),
        ),
        child: Center(
          child: Text(
            "financy",
            style: AppTextStyles.bigText.copyWith(color: AppColors.white),
            textAlign: TextAlign.center,
          ).animate().fade(duration: const Duration(milliseconds: 800)),
        ),
      ),
    );
  }
}
