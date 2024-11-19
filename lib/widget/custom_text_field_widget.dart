import 'package:fitness_app/constant.dart';
import 'package:flutter/material.dart';

class CustomTextFieldWidget extends StatelessWidget {
  const CustomTextFieldWidget({
    super.key,
    this.hintText = '',
    this.prefixIcon,
    this.suffixIcon,
    this.textAlign = TextAlign.start,
    this.onChanged,
    this.fontSize = 18,
  });
  final String hintText;
  final IconData? prefixIcon;
  final IconData? suffixIcon;
  final TextAlign textAlign;
  final void Function(String)? onChanged;
  final double fontSize;
  @override
  Widget build(BuildContext context) {
    return TextField(
      textAlign: textAlign,
      onChanged: onChanged,
      style: TextStyle(
        color: kGreyColor,
        fontSize: fontSize,
      ),
      decoration: InputDecoration(
        contentPadding: const EdgeInsets.fromLTRB(
          0,
          10,
          0,
          10,
        ),
        hintText: hintText,
        hintStyle: TextStyle(
          color: kGreyColor,
          fontSize: 13,
        ),
        prefixIcon: prefixIcon != null
            ? Icon(
                prefixIcon,
                size: 22,
                color: const Color(
                  0xffA477C6,
                ),
              )
            : null,
        suffixIcon: suffixIcon != null
            ? Icon(
                suffixIcon,
                size: 22,
                color: kGreyColor,
              )
            : null,
      ),
    );
  }
}
