import 'package:financy_app/src/core/constants/app_text_styles.dart';
import 'package:financy_app/src/core/widgets/primary_button.dart';
import 'package:flutter/material.dart';

Future<void> customModalBottomSheet(BuildContext context,
    {String? content, String? buttonText}) {
  return showModalBottomSheet<void>(
    context: context,
    shape: const RoundedRectangleBorder(
      borderRadius: BorderRadius.only(
        topLeft: Radius.circular(18),
        topRight: Radius.circular(18),
      ),
    ),
    builder: (BuildContext context) {
      return SizedBox(
        height: 250,
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            mainAxisSize: MainAxisSize.min,
            children: <Widget>[
              Text(
                content ?? 'Ops, Algo deu errado.',
                style: AppTextStyles.customStyle(context, FontWeight.w500, 20),
              ),
              const SizedBox(height: 20),
              Padding(
                padding:
                    const EdgeInsets.symmetric(vertical: 16, horizontal: 32),
                child: PrimaryButton(
                  title: buttonText ?? 'Tentar Novamento',
                  onTap: () => Navigator.pop(context),
                  borderRadius: 18,
                ),
              ),
            ],
          ),
        ),
      );
    },
  );
}
