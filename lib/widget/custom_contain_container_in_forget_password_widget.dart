import 'package:fitness_app/constant.dart';
import 'package:fitness_app/views/o_t_p_view.dart';
import 'package:fitness_app/widget/custom_navigation_button_widget.dart';
import 'package:fitness_app/widget/custom_text_field_widget.dart';
import 'package:fitness_app/widget/custom_text_widget.dart';
import 'package:flutter/material.dart';

class CustomContainContainerInForgetPasswordWidget extends StatelessWidget {
  const CustomContainContainerInForgetPasswordWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const SizedBox(
          height: 40,
        ),
        Transform.translate(
          offset: const Offset(
            -30,
            -10,
          ),
          child: CustomTextWidget(
            text: 'Forget Password',
            color: kDeepPurpleColor,
            fontSize: 18,
            fontWeight: FontWeight.bold,
          ),
        ),
        const CustomTextFieldWidget(
          hintText: 'Email',
          prefixIcon: Icons.email,
        ),
        const CustomTextFieldWidget(
          hintText: 'New Password',
          prefixIcon: Icons.lock,
          suffixIcon: Icons.visibility,
        ),
        const CustomTextFieldWidget(
          hintText: 'Confirm Password',
          prefixIcon: Icons.lock,
          suffixIcon: Icons.visibility,
        ),
        const SizedBox(
          height: 20,
        ),
        CustomNavigationButtonWidget(
          onTap: () {
            Navigator.of(context).pushNamed(
              OTPView.otpViewId,
            );
          },
          height: 40,
          width: 130,
          colorToContainer: kDeepPurpleColor,
          colorToText: kWhiteColor,
          text: 'Edit',
          fontSize: 21,
        ),
      ],
    );
  }
}
