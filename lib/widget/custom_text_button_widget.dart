import 'package:fitness_app/widget/custom_text_widget.dart';
import 'package:flutter/material.dart';

class CustomTextButtonWidget extends StatelessWidget {
  const CustomTextButtonWidget({
    super.key,
    required this.text,
    required this.color,
    required this.onPressed,
    required this.fontSize,
  });
  final void Function()? onPressed;
  final String text;
  final Color color;
  final double fontSize;
  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: onPressed,
      child: CustomTextWidget(
        text: text,
        color: color,
        fontSize: fontSize,
      ),
    );
  }
}
