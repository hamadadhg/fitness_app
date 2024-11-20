import 'package:fitness_app/constant.dart';
import 'package:fitness_app/helper/message_to_user_helper.dart';
import 'package:fitness_app/views/o_t_p_view.dart';
import 'package:fitness_app/widget/custom_navigation_button_widget.dart';
import 'package:fitness_app/widget/custom_text_form_field_widget.dart';
import 'package:fitness_app/widget/custom_text_widget.dart';
import 'package:flutter/material.dart';

class CustomContainContainerInSignUpWidget extends StatefulWidget {
  const CustomContainContainerInSignUpWidget({super.key});

  @override
  State<CustomContainContainerInSignUpWidget> createState() =>
      _CustomContainContainerInSignUpWidgetState();
}

class _CustomContainContainerInSignUpWidgetState
    extends State<CustomContainContainerInSignUpWidget> {
  GlobalKey<FormState> formKey = GlobalKey<FormState>();
  AutovalidateMode autovalidateMode = AutovalidateMode.disabled;
  @override
  Widget build(BuildContext context) {
    return Form(
      key: formKey,
      child: Column(
        children: [
          CustomTextWidget(
            text: 'Sign Up',
            color: kDeepPurpleColor,
            fontSize: 18,
            fontWeight: FontWeight.bold,
          ),
          const SizedBox(
            height: 8,
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
            hintText: 'Phone',
            prefixIcon: Icons.phone,
            validator: (value) {
              if (value == null || value.isEmpty) {
                return 'This Field\'s Required';
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
          const SizedBox(
            height: 21,
          ),
          CustomNavigationButtonWidget(
            onTap: () {
              if (formKey.currentState!.validate()) {
                messageToUserHelper(
                  context: context,
                  text: 'Successful Sign Up',
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
            height: 40,
            width: 130,
            colorToContainer: kDeepPurpleColor,
            colorToText: kWhiteColor,
            text: 'Sign Up',
            fontSize: 21,
          ),
        ],
      ),
    );
  }
}
