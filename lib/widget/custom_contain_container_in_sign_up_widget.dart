import 'package:firebase_auth/firebase_auth.dart';
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
  String? email, password;
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
            hintText: 'Phone',
            keyboardType: TextInputType.phone,
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
            height: 21,
          ),
          CustomNavigationButtonWidget(
            onTap: () async {
              if (formKey.currentState!.validate()) {
                try {
                  await FirebaseAuth.instance.createUserWithEmailAndPassword(
                    email: email!,
                    password: password!,
                  );
                  if (mounted) {
                    Navigator.of(context).pushNamed(
                      OTPView.otpViewId,
                    );
                  }
                  messageToUserHelper(
                    context: context,
                    text: 'Successful Sign Up',
                  );
                } on FirebaseAuthException catch (e) {
                  if (e.code == 'weak-password') {
                    messageToUserHelper(
                      context: context,
                      text: 'the password\'s weak or uncompletely',
                    );
                  } else if (e.code == 'email-already-in-use') {
                    messageToUserHelper(
                      context: context,
                      text: 'the email\'s already exists',
                    );
                  } else {
                    messageToUserHelper(
                      context: context,
                      text: 'error occured please try again later',
                    );
                  }
                } catch (e) {
                  throw Exception(
                    'There\'s An Error In Sign Up ${e.toString()}',
                  );
                }
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
