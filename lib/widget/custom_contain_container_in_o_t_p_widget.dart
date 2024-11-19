import 'package:fitness_app/constant.dart';
import 'package:fitness_app/widget/custom_navigation_button_widget.dart';
import 'package:fitness_app/widget/custom_text_button_widget.dart';
import 'package:fitness_app/widget/custom_text_fields_in_row_widget.dart';
import 'package:fitness_app/widget/custom_text_widget.dart';
import 'package:flutter/material.dart';

class CustomContainContainerInOTPWidget extends StatelessWidget {
  const CustomContainContainerInOTPWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const SizedBox(
          height: 15,
        ),
        Transform.translate(
          offset: const Offset(
            -20,
            0,
          ),
          child: CustomTextWidget(
            text: 'Enter OTP',
            color: kDeepPurpleColor,
            fontSize: 20,
            fontWeight: FontWeight.bold,
          ),
        ),
        const SizedBox(
          height: 20,
        ),
        CustomTextWidget(
          text: 'please enter the otp',
          color: kGreyColor,
          fontSize: 16,
        ),
        Row(
          children: [
            CustomTextWidget(
              text: 'sent to ',
              color: kGreyColor,
              fontSize: 16,
            ),
            CustomTextWidget(
              text: ' 0949 371 163',
              color: kBlackColor,
              fontSize: 16,
            ),
          ],
        ),
        const CustomTextFieldsInRow(),
        const SizedBox(
          height: 10,
        ),
        Transform.translate(
          offset: const Offset(
            -50,
            0,
          ),
          child: CustomTextButtonWidget(
            text: 'Resend OTP',
            color: kDeepPurpleColor,
            onPressed: () {},
            fontSize: 16,
            fontWeight: FontWeight.bold,
          ),
        ),
        const SizedBox(
          height: 10,
        ),
        CustomNavigationButtonWidget(
          onTap: () {},
          height: 45,
          width: 130,
          colorToContainer: kDeepPurpleColor,
          colorToText: kWhiteColor,
          text: 'Next',
          fontSize: 21,
        ),
      ],
    );
  }
}
