import 'package:financy_app/core/constants/app_colors.dart';
import 'package:financy_app/core/constants/app_text_styles.dart';
import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

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
          style:
              AppTextStyles.mediumText.copyWith(color: AppColors.greenLightTwo),
          textAlign: TextAlign.center,
        ),
        const SizedBox(height: 10),
        FractionallySizedBox(
          widthFactor: 0.7,
          child: ElevatedButton(
            onPressed: () {},
            style: ButtonStyle(
                elevation: MaterialStateProperty.all(5),
                backgroundColor:
                    MaterialStateProperty.all(AppColors.greenLightTwo),
                shape: MaterialStateProperty.all(RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(40)))),
            child: Text(
              'Get Started',
              style: AppTextStyles.smallText.copyWith(
                  color: AppColors.white, fontWeight: FontWeight.bold),
              textAlign: TextAlign.center,
            ),
          ),
        ),
        const SizedBox(height: 10),
        Text(
          'Already have account? sign in',
          style:
              AppTextStyles.smallText.copyWith(color: AppColors.greenLightTwo),
        ),
      ]),
    );
  }
}
