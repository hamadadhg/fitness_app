import 'package:fitness_app/constant.dart';
import 'package:fitness_app/widget/custom_navigation_button_widget.dart';
import 'package:fitness_app/widget/custom_text_field_widget.dart';
import 'package:fitness_app/widget/custom_text_widget.dart';
import 'package:flutter/material.dart';

class CustomContainContainerInSignUpWidget extends StatelessWidget {
  const CustomContainContainerInSignUpWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Transform.translate(
          offset: const Offset(
            -30,
            0,
          ),
          child: CustomTextWidget(
            text: 'Sign Up',
            color: kDeepPurpleColor,
            fontSize: 18,
            fontWeight: FontWeight.bold,
          ),
        ),
        const SizedBox(
          height: 8,
        ),
        const CustomTextFieldWidget(
          hintText: 'Full Name',
          prefixIcon: Icons.person,
        ),
        const CustomTextFieldWidget(
          hintText: 'Email',
          prefixIcon: Icons.email,
        ),
        const CustomTextFieldWidget(
          hintText: 'Phone',
          prefixIcon: Icons.phone,
        ),
        const CustomTextFieldWidget(
          hintText: 'Password',
          prefixIcon: Icons.lock,
          suffixIcon: Icons.visibility,
        ),
        const SizedBox(
          height: 21,
        ),
        CustomNavigationButtonWidget(
          onTap: () {},
          height: 40,
          width: 130,
          colorToContainer: kDeepPurpleColor,
          colorToText: kWhiteColor,
          text: 'Sign Up',
          fontSize: 21,
        ),
      ],
    );
  }
}
