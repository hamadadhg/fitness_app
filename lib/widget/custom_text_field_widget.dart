import 'package:fitness_app/constant.dart';
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
      style: TextStyle(
        color: kGreyColor,
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
          color: kGreyColor,
        ),
      ),
    );
  }
}
