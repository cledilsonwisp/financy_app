import 'package:financy_app/core/constants/app_colors.dart';
import 'package:financy_app/core/constants/app_text_styles.dart';
import 'package:flutter/material.dart';

class PrimaryButton extends StatelessWidget {
  final void Function()? onTap;
  final String title;
  const PrimaryButton({super.key, this.onTap, required this.title});

  @override
  Widget build(BuildContext context) {
    return FractionallySizedBox(
      widthFactor: 0.6,
      child: Ink(
        height: 48,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(24),
            gradient: LinearGradient(
                colors: onTap != null
                    ? AppColors.greenGradient
                    : AppColors.greyGradient,
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter)),
        child: InkWell(
          borderRadius: BorderRadius.circular(24),
          onTap: onTap,
          child: SizedBox(
            child: Center(
              child: Text(
                title,
                style: AppTextStyles.smallText(context).copyWith(
                    color: AppColors.white, fontWeight: FontWeight.bold),
                textAlign: TextAlign.center,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
