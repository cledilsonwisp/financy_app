import 'dart:developer';

import 'package:financy_app/core/constants/app_colors.dart';
import 'package:financy_app/core/constants/app_text_styles.dart';
import 'package:financy_app/core/utils/dinamic_size_responsive.dart';
import 'package:financy_app/core/widgets/multi_text_button.dart';
import 'package:financy_app/core/widgets/primary_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:lottie/lottie.dart';

class SignUpPage extends StatelessWidget {
  const SignUpPage({super.key});

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
          ),
          SizedBox(
            height:
                DinamicSizeResponsive.of(context).dynamicScaleSize(size: 320),
            child: Lottie.asset(
                "assets/animations/your_money_sign_up_animation.json",
                repeat: false,
                frameRate: FrameRate(60)),
          ),

          const Form(
              child: Column(
            children: [
              CustomTextFormField(
                labelText: 'Your name',
                hintText: 'Example',
              ),
              CustomTextFormField(
                labelText: 'Your email',
                hintText: 'Email@exemplo.com',
              ),
              CustomTextFormField(
                labelText: 'Choose your password',
                hintText: '123456%abc',
              ),
              CustomTextFormField(
                labelText: 'Confirm your password',
                hintText: '********',
              ),
            ],
          )),
          const SizedBox(height: 10),
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

class CustomTextFormField extends StatefulWidget {
  const CustomTextFormField(
      {super.key,
      required this.labelText,
      this.hintText,
      this.edgeInsets,
      this.textCapitalization,
      this.controller});

  final String labelText;
  final String? hintText;
  final EdgeInsets? edgeInsets;
  final TextCapitalization? textCapitalization;
  final TextEditingController? controller;

  @override
  State<CustomTextFormField> createState() => _CustomTextFormFieldState();
}

class _CustomTextFormFieldState extends State<CustomTextFormField> {
  final defaultBorder = const OutlineInputBorder(
      borderSide: BorderSide(color: AppColors.greenLightTwo),
      borderRadius: BorderRadius.all(Radius.circular(8)));
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: widget.edgeInsets ??
          const EdgeInsets.symmetric(horizontal: 24, vertical: 12),
      child: TextFormField(
        controller: widget.controller,
        textCapitalization:
            widget.textCapitalization ?? TextCapitalization.none,
        decoration: InputDecoration(
          labelText: widget.labelText.toUpperCase(),
          labelStyle: AppTextStyles.customStyle(context, FontWeight.w400, 14,
              color: AppColors.darkGrey),
          floatingLabelBehavior: FloatingLabelBehavior.always,
          hintText: widget.hintText,
          hintStyle: AppTextStyles.customStyle(context, FontWeight.w300, 14,
              color: AppColors.darkGrey),
          border: defaultBorder,
          focusedBorder: defaultBorder,
          errorBorder: defaultBorder.copyWith(
              borderSide: const BorderSide(color: Colors.red)),
          enabledBorder: defaultBorder,
          disabledBorder: defaultBorder,
          focusedErrorBorder: defaultBorder,
        ),
      ),
    );
  }
}
