import 'dart:developer';

import 'package:financy_app/src/core/constants/app_colors.dart';
import 'package:financy_app/src/core/constants/app_text_styles.dart';
import 'package:financy_app/src/core/utils/dinamic_size_responsive.dart';
import 'package:financy_app/src/core/utils/validator.dart';
import 'package:financy_app/src/core/widgets/custom_text_form_field.dart';
import 'package:financy_app/src/core/widgets/multi_text_button.dart';
import 'package:financy_app/src/core/widgets/primary_button.dart';
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
  final passwordController = TextEditingController();

  @override
  void initState() {
    // controller.addListener(() {
    //   if (controller.state is SignUpLoadingState) {
    //     showDialog(
    //       context: context,
    //       builder: (context) => const CustomCircularProgressIndicator(),
    //     );
    //   }
    //   if (controller.state is SignUpSuccessState) {
    //     Navigator.pop(context);
    //     Navigator.push(
    //         context,
    //         MaterialPageRoute(
    //           builder: (context) => const Scaffold(
    //             body: Text('Nova tela'),
    //           ),
    //         ));
    //   }
    //   if (controller.state is SignUpErrorState) {
    //     Navigator.pop(context);
    //     customModalBottomSheet(context);
    //   }
    // });
    super.initState();
  }

  @override
  void dispose() {
    passwordController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final formKey = GlobalKey<FormState>();
    return Scaffold(
      body: ListView(
        children: [
          Text(
            'Start Saving\nyour money!',
            textAlign: TextAlign.center,
            style: AppTextStyles.mediumText(context).copyWith(
                color: AppColors.greenTwo, fontSize: ScreenUtil().setSp(36)),
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
              key: formKey,
              child: Column(
                children: [
                  const CustomTextFormField(
                      labelText: 'Your name',
                      hintText: 'Example',
                      keyboardingType: TextInputType.name,
                      validator: Validator.validateName),
                  const CustomTextFormField(
                    labelText: 'Your email',
                    hintText: 'Email@exemplo.com',
                    keyboardingType: TextInputType.emailAddress,
                    validator: Validator.validateEmail,
                  ),
                  StatefulBuilder(
                    builder: (context, setState) => CustomTextFormField(
                      labelText: "Choose your password",
                      hintText: "123456%abc",
                      controller: passwordController,
                      helperText:
                          "Must have at least 8 characters, 1 capital letter and 1 number.",
                      keyboardingType: TextInputType.visiblePassword,
                      obscure: isHiddendPassword,
                      suffix: InkWell(
                        borderRadius:
                            const BorderRadius.all(Radius.circular(23)),
                        child: isHiddendPassword
                            ? const Icon(Icons.visibility)
                            : const Icon(Icons.visibility_off),
                        onTap: () => setState
                            .call(() => isHiddendPassword = !isHiddendPassword),
                      ),
                      validator: Validator.validatePassword,
                    ),
                  ),
                  StatefulBuilder(
                    builder: (context, setState) => CustomTextFormField(
                      labelText: 'Confirm your password',
                      hintText: '********',
                      obscure: isHiddendConfirmPassword,
                      suffix: InkWell(
                        borderRadius:
                            const BorderRadius.all(Radius.circular(23)),
                        child: isHiddendConfirmPassword
                            ? const Icon(Icons.visibility)
                            : const Icon(Icons.visibility_off),
                        onTap: () => setState.call(() =>
                            isHiddendConfirmPassword =
                                !isHiddendConfirmPassword),
                      ),
                      validator: (value) => Validator.validateConfirmPassword(
                          value, passwordController.text),
                    ),
                  )
                ],
              ).animate().slideX()),
          const SizedBox(height: 10),
          PrimaryButton(
            title: 'Sign up',
            onTap: () {
              var valid = formKey.currentState != null &&
                  formKey.currentState!.validate();
              if (valid) {
                // controller.doSignUp();
              } else {
                log("Lógica  de login");
              }
            },
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
                    color: AppColors.greenTwo, fontWeight: FontWeight.bold),
              ),
            ],
            onPressed: () => log('Logou'),
          ),
        ],
      ),
    );
  }
}
