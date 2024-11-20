import 'package:fitness_app/constant.dart';
import 'package:fitness_app/helper/message_to_user_helper.dart';
import 'package:fitness_app/widget/custom_navigation_button_widget.dart';
import 'package:fitness_app/widget/custom_text_button_widget.dart';
import 'package:fitness_app/widget/custom_text_form_field_widget.dart';
import 'package:fitness_app/widget/custom_text_widget.dart';
import 'package:flutter/material.dart';

class CustomContainContainerInOTPWidget extends StatefulWidget {
  const CustomContainContainerInOTPWidget({super.key});

  @override
  State<CustomContainContainerInOTPWidget> createState() =>
      _CustomContainContainerInOTPWidgetState();
}

class _CustomContainContainerInOTPWidgetState
    extends State<CustomContainContainerInOTPWidget> {
  GlobalKey<FormState> formKey = GlobalKey<FormState>();
  AutovalidateMode autovalidateMode = AutovalidateMode.disabled;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
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
        Form(
          key: formKey,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              SizedBox(
                width: 45,
                child: CustomTextFieldWidget(
                  keyboardType: TextInputType.phone,
                  textAlign: TextAlign.center,
                  fontSize: 16,
                  onChanged: (value) {
                    if (value.length == 1) {
                      FocusScope.of(context).nextFocus();
                    }
                  },
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'This';
                    }
                    return null;
                  },
                ),
              ),
              const SizedBox(
                width: 8,
              ),
              SizedBox(
                width: 45,
                child: CustomTextFieldWidget(
                  keyboardType: TextInputType.phone,
                  textAlign: TextAlign.center,
                  fontSize: 16,
                  onChanged: (value) {
                    if (value.length == 1) {
                      FocusScope.of(context).nextFocus();
                    }
                  },
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'Field';
                    }
                    return null;
                  },
                ),
              ),
              const SizedBox(
                width: 8,
              ),
              SizedBox(
                width: 45,
                child: CustomTextFieldWidget(
                  keyboardType: TextInputType.phone,
                  textAlign: TextAlign.center,
                  fontSize: 16,
                  onChanged: (value) {
                    if (value.length == 1) {
                      FocusScope.of(context).nextFocus();
                    }
                  },
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'Is';
                    }
                    return null;
                  },
                ),
              ),
              const SizedBox(
                width: 8,
              ),
              SizedBox(
                width: 45,
                child: CustomTextFieldWidget(
                  keyboardType: TextInputType.phone,
                  textAlign: TextAlign.center,
                  fontSize: 16,
                  onChanged: (value) {
                    if (value.length == 1) {
                      FocusScope.of(context).nextFocus();
                    }
                  },
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'Required';
                    }
                    return null;
                  },
                ),
              ),
            ],
          ),
        ),
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
          onTap: () {
            if (formKey.currentState!.validate()) {
              messageToUserHelper(
                context: context,
                text: 'Correct OTP',
              );
            } else {
              autovalidateMode = AutovalidateMode.always;
            }
          },
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
