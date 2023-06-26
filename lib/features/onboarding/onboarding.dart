import 'package:financy_app/core/constants/app_colors.dart';
import 'package:financy_app/core/constants/app_text_styles.dart';
import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

class OnboardingPage extends StatelessWidget {
  const OnboardingPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(children: [
        Lottie.asset('assets/animations/financy_onboarding_animation.json'),
        Text(
          'Spend Smarter\nSave More',
          style: AppTextStyles.bigText.copyWith(color: AppColors.greenLightOne),
        ),
        ElevatedButton(
          onPressed: () {},
          style: ButtonStyle(
              shape: MaterialStateProperty.all(RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(40)))),
          child: Text(
            'Get Started',
            style: AppTextStyles.mediumText.copyWith(color: AppColors.white),
          ),
        ),
        Text(
          'Already have account? sign in',
          style:
              AppTextStyles.smallText.copyWith(color: AppColors.greenLightOne),
        ),
      ]),
    );
  }
}
