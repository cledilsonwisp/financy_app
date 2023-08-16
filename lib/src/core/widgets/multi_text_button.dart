import 'package:flutter/material.dart';

class MultiTextButton extends StatelessWidget {
  final List<Text> children;
  final void Function()? onPressed;
  const MultiTextButton({
    super.key,
    required this.children,
    this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: onPressed,
      child: Row(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.center,
        children: children,
      ),
    );
  }
}