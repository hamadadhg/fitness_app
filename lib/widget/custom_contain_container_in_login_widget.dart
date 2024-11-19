import 'package:fitness_app/constant.dart';
import 'package:fitness_app/views/o_t_p_view.dart';
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
        Row(
          children: [
            const SizedBox(
              width: 50,
            ),
            CustomTextWidget(
              text: 'Login',
              color: kDeepPurpleColor,
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
              color: kGreyColor,
              fontSize: 13,
            ),
          ],
        ),
        Row(
          children: [
            CustomNavigationButtonWidget(
              onTap: () {
                Navigator.of(context).pushNamed(
                  OTPView.otpViewId,
                );
              },
              text: 'Login',
              fontSize: 21,
              colorToContainer: kDeepPurpleColor,
              colorToText: kWhiteColor,
              height: 40,
              width: 130,
            ),
          ],
        ),
      ],
    );
  }
}
