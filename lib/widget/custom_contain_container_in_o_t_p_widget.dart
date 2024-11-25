import 'package:firebase_auth/firebase_auth.dart';
import 'package:fitness_app/constant.dart';
import 'package:fitness_app/helper/message_to_user_helper.dart';
import 'package:fitness_app/views/steps_view.dart';
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
  String? verificationId, smsCode, phoneNumber, digit1, digit2, digit3, digit4;

  Future<void> sendOTP({required String phoneNumber}) async {
    await FirebaseAuth.instance.verifyPhoneNumber(
      phoneNumber: phoneNumber,
      verificationCompleted: (PhoneAuthCredential credential) async {
        await FirebaseAuth.instance.signInWithCredential(
          credential,
        );
        messageToUserHelper(
          context: context,
          text: 'Phone Verified Successful',
        );
      },
      verificationFailed: (FirebaseAuthException error) {
        messageToUserHelper(
          context: context,
          text: 'Phone Verified Failed ${error.toString()}',
        );
      },
      codeSent: (String verId, int? resendToken) {
        setState(
          () {
            verificationId = verId;
          },
        );
        messageToUserHelper(
          context: context,
          text: 'OTP Sent To $phoneNumber',
        );
      },
      codeAutoRetrievalTimeout: (String verId) {
        setState(
          () {
            verificationId = null;
          },
        );
        messageToUserHelper(
          context: context,
          text: 'The OTP Expired Please Request A New One',
        );
      },
    );
  }

  Future<void> verifyOTP() async {
    try {
      PhoneAuthCredential credential = PhoneAuthProvider.credential(
        verificationId: verificationId!,
        smsCode: smsCode!,
      );
      await FirebaseAuth.instance.signInWithCredential(
        credential,
      );
      messageToUserHelper(
        context: context,
        text: 'Correct OTP Verification Successful',
      );
      Navigator.of(context).pushNamed(
        StepsView.stepsViewId,
      );
    } catch (e) {
      messageToUserHelper(
        context: context,
        text: 'Invalid OTP ${e.toString()} Please Try Again',
      );
    }
  }

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
                    if (value.isNotEmpty &&
                        RegExp(r'^[0-9]$').hasMatch(value)) {
                      digit1 = value;
                      FocusScope.of(context).nextFocus();
                    } else if (value.isEmpty) {
                      FocusScope.of(context).previousFocus();
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
                    if (value.isNotEmpty &&
                        RegExp(r'^[0-9$]').hasMatch(value)) {
                      digit2 = value;
                      FocusScope.of(context).nextFocus();
                    } else if (value.isEmpty) {
                      FocusScope.of(context).previousFocus();
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
                    if (value.isNotEmpty &&
                        RegExp(r'^[0-9]$').hasMatch(value)) {
                      digit3 = value;
                      FocusScope.of(context).nextFocus();
                    } else if (value.isEmpty) {
                      FocusScope.of(context).previousFocus();
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
                    if (value.isNotEmpty &&
                        RegExp(r'^[0-9]$').hasMatch(value)) {
                      digit4 = value;
                      FocusScope.of(context).nextFocus();
                    } else if (value.isEmpty) {
                      FocusScope.of(context).previousFocus();
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
            onPressed: () {
              if (phoneNumber!.isNotEmpty) {
                sendOTP(
                  phoneNumber: '',
                );
              } else {
                messageToUserHelper(
                  context: context,
                  text: 'PhoneNumber Is Missing Please Enable It To Resend OTP',
                );
              }
            },
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
              smsCode = digit1! + digit2! + digit3! + digit4!;
              verifyOTP();
            } else {
              setState(
                () {
                  autovalidateMode = AutovalidateMode.always;
                },
              );
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
