import 'package:flutter/material.dart';

class CustomTextFieldWidget extends StatelessWidget {
  const CustomTextFieldWidget({
    super.key,
    required this.hintText,
    required this.prefixIcon,
    this.suffixIcon,
  });
  final String hintText;
  final IconData prefixIcon;
  final IconData? suffixIcon;
  @override
  Widget build(BuildContext context) {
    return TextField(
      style: const TextStyle(
        color: Color(
          0xff9A9A9A,
        ),
      ),
      decoration: InputDecoration(
        contentPadding: const EdgeInsets.fromLTRB(
          0,
          10,
          0,
          10,
        ),
        hintText: hintText,
        hintStyle: const TextStyle(
          color: Color(
            0xff9A9A9A,
          ),
          fontSize: 13,
        ),
        prefixIcon: Icon(
          prefixIcon,
          size: 22,
          color: const Color(
            0xffA477C6,
          ),
        ),
        suffixIcon: Icon(
          suffixIcon,
          size: 22,
          color: const Color(
            0xff9A9A9A,
          ),
        ),
      ),
    );
  }
}
