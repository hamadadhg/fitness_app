import 'package:fitness_app/constant.dart';
import 'package:fitness_app/widget/custom_icon_button_widget.dart';
import 'package:fitness_app/widget/custom_linear_gradient_widget.dart';
import 'package:fitness_app/widget/custom_row_in_corner_widget.dart';
import 'package:fitness_app/widget/custom_stack_widget.dart';
import 'package:fitness_app/widget/custom_text_field_widget.dart';
import 'package:fitness_app/widget/custom_text_fields_in_row_widget.dart';
import 'package:fitness_app/widget/custom_text_widget.dart';
import 'package:flutter/material.dart';

class OTPView extends StatelessWidget {
  const OTPView({super.key});
  static String otpViewId = 'OTPView';
  @override
  Widget build(BuildContext context) {
    return CustomLinearGradientWidget(
      widget: Scaffold(
        backgroundColor: kTransparentColor,
        appBar: AppBar(
          backgroundColor: kTransparentColor,
          leading: const CustomIconButtonWidget(),
        ),
        body: const Column(
          children: [
            CustomRowInCornerWidget(),
            CustomStackWidget(
              widget: CustomContainContainerInOTPWidget(),
              heightToContainer: 300,
              widthToContainer: 300,
            ),
          ],
        ),
      ),
    );
  }
}

class CustomContainContainerInOTPWidget extends StatelessWidget {
  const CustomContainContainerInOTPWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        CustomTextWidget(
          text: 'Enter OTP',
          color: kDeepPurpleColor,
          fontSize: 20,
          fontWeight: FontWeight.bold,
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
      ],
    );
  }
}
