import 'package:financy_app/src/core/constants/app_colors.dart';
import 'package:financy_app/src/core/widgets/custom_text_form_field.dart';
import 'package:financy_app/src/core/widgets/primary_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';

import '../../../core/constants/app_text_styles.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "financy",
              style: AppTextStyles.bigText(context, AppColors.greenTwo),
              textAlign: TextAlign.center,
            ).animate().fade(duration: const Duration(milliseconds: 800)),
            const SizedBox(height: 30),
            const CustomTextFormField(labelText: 'Email'),
            const CustomTextFormField(labelText: 'Senha'),
            const SizedBox(height: 30),
            const PrimaryButton(title: 'Login'),
            const SizedBox(height: 30),
            Text(
              "Não tem conta? crie uma",
              style: AppTextStyles.smallText(context),
              textAlign: TextAlign.center,
            ).animate().fade(duration: const Duration(milliseconds: 800)),
          ],
        ),
      ),
    );
  }
}
