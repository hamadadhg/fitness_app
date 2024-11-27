import 'package:fitness_app/constant.dart';
import 'package:fitness_app/helper/message_to_user_helper.dart';
import 'package:fitness_app/views/steps_view.dart';
import 'package:fitness_app/widget/custom_navigation_button_widget.dart';
import 'package:fitness_app/widget/custom_text_form_field_widget.dart';
import 'package:fitness_app/widget/custom_text_widget.dart';
import 'package:flutter/material.dart';

class CustomContainContainerInForgetPasswordWidget extends StatefulWidget {
  const CustomContainContainerInForgetPasswordWidget({super.key});

  @override
  State<CustomContainContainerInForgetPasswordWidget> createState() =>
      _CustomContainContainerInForgetPasswordWidgetState();
}

class _CustomContainContainerInForgetPasswordWidgetState
    extends State<CustomContainContainerInForgetPasswordWidget> {
  GlobalKey<FormState> formKey = GlobalKey<FormState>();
  AutovalidateMode autovalidateMode = AutovalidateMode.disabled;
  @override
  Widget build(BuildContext context) {
    return Form(
      key: formKey,
      child: Column(
        children: [
          CustomTextWidget(
            text: 'Forget Password',
            color: kDeepPurpleColor,
            fontSize: 18,
            fontWeight: FontWeight.bold,
          ),
          const SizedBox(
            height: 20,
          ),
          CustomTextFieldWidget(
            hintText: 'Email',
            keyboardType: TextInputType.emailAddress,
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
            hintText: 'New Password',
            keyboardType: TextInputType.visiblePassword,
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
          CustomTextFieldWidget(
            hintText: 'Confirm Password',
            keyboardType: TextInputType.visiblePassword,
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
            height: 20,
          ),
          CustomNavigationButtonWidget(
            onTap: () {
              if (formKey.currentState!.validate()) {
                messageToUserHelper(
                  context: context,
                  text: 'Successful Edit',
                );
                Navigator.of(context).pushNamed(
                  StepsView.stepsViewId,
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
            text: 'Edit',
            fontSize: 21,
          ),
        ],
      ),
    );
  }
}
