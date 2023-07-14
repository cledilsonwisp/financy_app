import 'dart:developer';

import 'package:financy_app/core/constants/app_colors.dart';
import 'package:financy_app/core/constants/app_text_styles.dart';
import 'package:financy_app/core/utils/dinamic_size_responsive.dart';
import 'package:financy_app/core/widgets/custom_text_form_field.dart';
import 'package:financy_app/core/widgets/multi_text_button.dart';
import 'package:financy_app/core/widgets/primary_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:lottie/lottie.dart';

class SignUpPage extends StatefulWidget {
  const SignUpPage({super.key});

  @override
  State<SignUpPage> createState() => _SignUpPageState();
}

class _SignUpPageState extends State<SignUpPage> {
  bool isHiddendPassword = true;
  bool isHiddendConfirmPassword = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          Text(
            'Start Saving\nyour money!',
            textAlign: TextAlign.center,
            style: AppTextStyles.mediumText(context).copyWith(
                color: AppColors.greenLightTwo,
                fontSize: ScreenUtil().setSp(36)),
          ).animate().fade(),
          SizedBox(
            height:
                DinamicSizeResponsive.of(context).dynamicScaleSize(size: 320),
            child: Lottie.asset(
                "assets/animations/your_money_sign_up_animation.json",
                repeat: false,
                frameRate: FrameRate(60)),
          ),
          Form(
              child: Column(
            children: [
              const CustomTextFormField(
                labelText: 'Your name',
                hintText: 'Example',
                keyboardingType: TextInputType.name,
              ),
              const CustomTextFormField(
                labelText: 'Your email',
                hintText: 'Email@exemplo.com',
                keyboardingType: TextInputType.emailAddress,
              ),
              CustomTextFormField(
                labelText: 'Choose your password',
                hintText: '123456%abc',
                keyboardingType: TextInputType.visiblePassword,
                obscure: isHiddendPassword,
                suffix: InkWell(
                    borderRadius: const BorderRadius.all(Radius.circular(23)),
                    child: isHiddendPassword
                        ? const Icon(Icons.visibility)
                        : const Icon(Icons.visibility_off),
                    onTap: () {
                      log("Clicou button password");
                      setState(() {
                        isHiddendPassword = !isHiddendPassword;
                      });
                    }),
              ),
              CustomTextFormField(
                labelText: 'Confirm your password',
                hintText: '********',
                obscure: isHiddendConfirmPassword,
                suffix: InkWell(
                    borderRadius: const BorderRadius.all(Radius.circular(23)),
                    child: isHiddendConfirmPassword
                        ? const Icon(Icons.visibility)
                        : const Icon(Icons.visibility_off),
                    onTap: () {
                      log("Clicou button password");
                      setState(() {
                        isHiddendConfirmPassword = !isHiddendConfirmPassword;
                      });
                    }),
              ),
            ],
          ).animate().slideX()),
          const SizedBox(height: 10),
          PrimaryButton(
            title: 'Sign up',
            onTap: () => log('ALOOO'),
          ),
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
