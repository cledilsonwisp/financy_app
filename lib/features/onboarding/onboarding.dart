import 'dart:developer';

import 'package:financy_app/core/constants/app_colors.dart';
import 'package:financy_app/core/constants/app_text_styles.dart';
import 'package:financy_app/core/widgets/multi_text_button.dart';
import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

import '../../core/widgets/primary_button.dart';

class OnboardingPage extends StatelessWidget {
  const OnboardingPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
        Lottie.asset(
          filterQuality: FilterQuality.high,
          frameRate: FrameRate.max,
          'assets/animations/financy_onboarding_animation.json',
        ),
        const SizedBox(height: 10),
        Text(
          'Spend Smarter\nSave More',
          style: AppTextStyles.mediumText(context)
              .copyWith(color: AppColors.greenTwo),
          textAlign: TextAlign.center,
        ),
        const SizedBox(height: 20),
        PrimaryButton(
          title: 'Get Started',
          onTap: () => log('ALOOO'),
        ),
        // const SizedBox(height: 20),
        MultiTextButton(
          children: [
            Text(
              'Already have account? ',
              style: AppTextStyles.smallText(context)
                  .copyWith(color: AppColors.grey),
            ),
            Text(
              'Sign in',
              style: AppTextStyles.smallText(context).copyWith(
                  color: AppColors.greenTwo, fontWeight: FontWeight.bold),
            ),
          ],
          onPressed: () => log('Logou'),
        ),
        // const SizedBox(height: 20),
      ]),
    );
  }
}
