import 'package:fitness_app/widget/custom_navigation_button_widget.dart';
import 'package:fitness_app/widget/custom_text_button_widget.dart';
import 'package:fitness_app/widget/custom_text_field_widget.dart';
import 'package:fitness_app/widget/custom_text_widget.dart';
import 'package:flutter/material.dart';

class CustomContainContainerInLoginWidget extends StatelessWidget {
  const CustomContainContainerInLoginWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const SizedBox(
          height: 10,
        ),
        const Row(
          children: [
            SizedBox(
              width: 50,
            ),
            CustomTextWidget(
              text: 'Login',
              color: Color(
                0xff411270,
              ),
              fontSize: 18,
              fontWeight: FontWeight.bold,
            ),
          ],
        ),
        const SizedBox(
          height: 10,
        ),
        const CustomTextFieldWidget(
          hintText: 'Email',
          prefixIcon: Icons.email,
        ),
        const CustomTextFieldWidget(
          hintText: 'Password',
          prefixIcon: Icons.lock,
          suffixIcon: Icons.visibility,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            CustomTextButtonWidget(
              onPressed: () {},
              text: 'Forgot Password?',
              color: const Color(
                0xff9A9A9A,
              ),
              fontSize: 13,
            ),
          ],
        ),
        Row(
          children: [
            CustomNavigationButtonWidget(
              onTap: () {},
              text: 'Login',
              fontSize: 24,
              colorToContainer: const Color(
                0xff6E26A3,
              ),
              colorToText: const Color(
                0xffFFFFFF,
              ),
              height: 45,
              width: 135,
            ),
          ],
        ),
      ],
    );
  }
}
