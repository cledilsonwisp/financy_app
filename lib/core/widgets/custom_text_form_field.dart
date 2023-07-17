import 'package:financy_app/core/constants/app_colors.dart';
import 'package:financy_app/core/constants/app_text_styles.dart';
import 'package:flutter/material.dart';

class CustomTextFormField extends StatefulWidget {
  const CustomTextFormField(
      {super.key,
      required this.labelText,
      this.hintText,
      this.edgeInsets,
      this.textCapitalization,
      this.controller,
      this.keyboardingType,
      this.maxLength,
      this.textInputAction,
      this.suffix,
      this.obscure,
      this.validator,
      this.helperText});

  final String labelText;
  final String? hintText;
  final EdgeInsets? edgeInsets;
  final TextCapitalization? textCapitalization;
  final TextEditingController? controller;
  final TextInputType? keyboardingType;
  final int? maxLength;
  final TextInputAction? textInputAction;
  final Widget? suffix;
  final bool? obscure;
  final FormFieldValidator<String>? validator;
  final String? helperText;

  @override
  State<CustomTextFormField> createState() => _CustomTextFormFieldState();
}

class _CustomTextFormFieldState extends State<CustomTextFormField> {
  final defaultBorder = const OutlineInputBorder(
      borderSide: BorderSide(color: AppColors.greenTwo),
      borderRadius: BorderRadius.all(Radius.circular(8)));
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: widget.edgeInsets ??
          const EdgeInsets.symmetric(horizontal: 24, vertical: 12),
      child: TextFormField(
        validator: widget.validator,
        textInputAction: widget.textInputAction,
        style: AppTextStyles.inputText(context)
            .copyWith(color: AppColors.greenOne),
        maxLength: widget.maxLength,
        keyboardType: widget.keyboardingType,
        controller: widget.controller,
        obscureText: widget.obscure ?? false,
        textCapitalization:
            widget.textCapitalization ?? TextCapitalization.none,
        decoration: InputDecoration(
          helperText: widget.helperText,
          helperMaxLines: 3,
          suffixIcon: widget.suffix,
          labelText: widget.labelText.toUpperCase(),
          helperStyle: AppTextStyles.customStyle(context, FontWeight.w400, 14,
              color: AppColors.darkGrey),
          labelStyle: AppTextStyles.customStyle(context, FontWeight.w400, 14,
              color: AppColors.darkGrey),
          floatingLabelBehavior: FloatingLabelBehavior.always,
          hintText: widget.hintText,
          hintStyle: AppTextStyles.customStyle(context, FontWeight.w300, 14,
              color: AppColors.darkGrey),
          border: defaultBorder,
          focusedBorder: defaultBorder,
          errorBorder: defaultBorder.copyWith(
            borderSide: const BorderSide(color: Colors.red),
            borderRadius: const BorderRadius.all(Radius.circular(8)),
          ),
          enabledBorder: defaultBorder,
          disabledBorder: defaultBorder.copyWith(
            borderSide: const BorderSide(color: Colors.red),
            borderRadius: const BorderRadius.all(Radius.circular(8)),
          ),
          focusedErrorBorder: defaultBorder,
        ),
      ),
    );
  }
}
