import 'package:financy_app/src/core/constants/app_colors.dart';
import 'package:financy_app/src/core/constants/app_text_styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:flutter_modular/flutter_modular.dart';

class SplashPage extends StatefulWidget {
  const SplashPage({super.key});

  @override
  State<SplashPage> createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage> {
  @override
  void initState() {
    super.initState();
    Future.delayed(
        const Duration(seconds: 2), () => Modular.to.navigate('/onboarding'));
  }

  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(
      const SystemUiOverlayStyle(
        statusBarColor: Colors.transparent, // Defina a cor desejada
      ),
    );
    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: [
              AppColors.greenOne,
              AppColors.greenTwo,
            ],
          ),
        ),
        child: Center(
          child: Text(
            "financy",
            style: AppTextStyles.bigText(context),
            textAlign: TextAlign.center,
          ).animate().fade(duration: const Duration(milliseconds: 800)),
        ),
      ),
    );
  }
}
