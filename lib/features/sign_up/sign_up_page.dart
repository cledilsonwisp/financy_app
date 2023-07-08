import 'dart:developer';

import 'package:financy_app/core/constants/app_colors.dart';
import 'package:financy_app/core/constants/app_text_styles.dart';
import 'package:financy_app/core/widgets/multi_text_button.dart';
import 'package:financy_app/core/widgets/primary_button.dart';
import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

class SignUpPage extends StatelessWidget {
  const SignUpPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          Text(
            'Start Saving your money',
            textAlign: TextAlign.center,
            style: AppTextStyles.mediumText(context)
                .copyWith(color: AppColors.greenLightOne),
          ),
          Lottie.asset("assets/animations/your_money_sign_up_animation.json",
              repeat: false, frameRate: FrameRate(60)),
          Form(
              child: Column(
            children: [
              TextFormField(
                decoration: const InputDecoration(
                  labelText: 'Your name',
                  border: OutlineInputBorder(
                    borderSide: BorderSide(color: AppColors.greenLightOne),
                    borderRadius: BorderRadius.all(
                      Radius.circular(8),
                    ),
                  ),
                ),
              )
            ],
          )),
          PrimaryButton(
            title: 'Sign up',
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
                    color: AppColors.greenLightTwo,
                    fontWeight: FontWeight.bold),
              ),
            ],
            onPressed: () => log('Logou'),
          ),
        ],
      ),
    );
  }
}
