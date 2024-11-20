import 'package:fitness_app/constant.dart';
import 'package:fitness_app/helper/message_to_user_helper.dart';
import 'package:fitness_app/views/forget_password_view.dart';
import 'package:fitness_app/views/o_t_p_view.dart';
import 'package:fitness_app/widget/custom_navigation_button_widget.dart';
import 'package:fitness_app/widget/custom_text_button_widget.dart';
import 'package:fitness_app/widget/custom_text_form_field_widget.dart';
import 'package:fitness_app/widget/custom_text_widget.dart';
import 'package:flutter/material.dart';

class CustomContainContainerInLoginWidget extends StatefulWidget {
  const CustomContainContainerInLoginWidget({super.key});

  @override
  State<CustomContainContainerInLoginWidget> createState() =>
      _CustomContainContainerInLoginWidgetState();
}

class _CustomContainContainerInLoginWidgetState
    extends State<CustomContainContainerInLoginWidget> {
  GlobalKey<FormState> formKey = GlobalKey<FormState>();
  AutovalidateMode autovalidateMode = AutovalidateMode.disabled;
  @override
  Widget build(BuildContext context) {
    return Form(
      key: formKey,
      child: Column(
        children: [
          CustomTextWidget(
            text: 'Login',
            color: kDeepPurpleColor,
            fontSize: 20,
            fontWeight: FontWeight.bold,
          ),
          const SizedBox(
            height: 10,
          ),
          CustomTextFieldWidget(
            hintText: 'Email',
            prefixIcon: Icons.email,
            validator: (value) {
              if (value == null || value.isEmpty) {
                return 'This Field\'s Required';
              } else if (!value.contains('@gmail.com')) {
                return 'Don\'t Forget @gmail.com';
              }
              return null;
            },
          ),
          CustomTextFieldWidget(
            hintText: 'Password',
            prefixIcon: Icons.lock,
            suffixIcon: Icons.visibility,
            validator: (value) {
              if (value == null || value.isEmpty) {
                return 'This Field\'s Required';
              } else if (value.length < 6) {
                return 'At Least 6 Character';
              }
              return null;
            },
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              CustomTextButtonWidget(
                onPressed: () {
                  Navigator.of(context).pushNamed(
                    ForgetPasswordView.forgetPasswordViewId,
                  );
                },
                text: 'Forget Password?',
                color: kGreyColor,
                fontSize: 13,
              ),
            ],
          ),
          const SizedBox(
            height: 25,
          ),
          CustomNavigationButtonWidget(
            onTap: () {
              if (formKey.currentState!.validate()) {
                messageToUserHelper(
                  context: context,
                  text: 'Successful Login',
                );
                Navigator.of(context).pushNamed(
                  OTPView.otpViewId,
                );
              } else {
                setState(
                  () {
                    autovalidateMode = AutovalidateMode.always;
                  },
                );
              }
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
    );
  }
}
