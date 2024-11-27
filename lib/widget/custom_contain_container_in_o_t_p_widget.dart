import 'package:firebase_auth/firebase_auth.dart';
import 'package:fitness_app/constant.dart';
import 'package:fitness_app/cubits/access_phone_number_cubit/access_phone_number_cubit.dart';
import 'package:fitness_app/helper/build_o_t_p_text_field_helper.dart';
import 'package:fitness_app/helper/message_to_user_helper.dart';
import 'package:fitness_app/views/steps_view.dart';
import 'package:fitness_app/widget/custom_navigation_button_widget.dart';
import 'package:fitness_app/widget/custom_text_button_widget.dart';
import 'package:fitness_app/widget/custom_text_form_field_widget.dart';
import 'package:fitness_app/widget/custom_text_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

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
  String? verificationId, phoneNumber, digit1, digit2, digit3, digit4;
  String smsCode = 'xxxxxx';

  String formatPhoneNumber({required String phoneNumber}) {
    if (!phoneNumber.startsWith('+')) {
      return '+963${phoneNumber.replaceFirst(RegExp(r'^0+'), '')}';
    }
    return phoneNumber;
  }

  Future<void> sendOTP({required String phoneNumber}) async {
    String formattedPhoneNumber = formatPhoneNumber(
      phoneNumber: phoneNumber,
    );
    await FirebaseAuth.instance.verifyPhoneNumber(
      phoneNumber: formattedPhoneNumber,
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
        if (error.code == 'invalid-phone-number') {
          messageToUserHelper(
            context: context,
            text: 'Provided Number Isn\'t Valid',
          );
        } else {
          messageToUserHelper(
            context: context,
            text: 'Phone Verified Failed ${error.toString()}',
          );
        }
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
      timeout: const Duration(
        minutes: 1,
      ),
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
        smsCode: smsCode,
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
  void initState() {
    phoneNumber = formatPhoneNumber(
      phoneNumber:
          BlocProvider.of<AccessPhoneNumberCubit>(context).phoneNumberInCubit!,
    );
    super.initState();
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
              text: ' $phoneNumber',
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
              buildOTPTextFieldHelper(
                onChanged: (value) => digit1 = value,
                textError: 'This',
                context: context,
              ),
              const SizedBox(
                width: 8,
              ),
              buildOTPTextFieldHelper(
                onChanged: (value) => digit2 = value,
                textError: 'Field',
                context: context,
              ),
              const SizedBox(
                width: 8,
              ),
              buildOTPTextFieldHelper(
                onChanged: (value) => digit3 = value,
                textError: 'Is',
                context: context,
              ),
              const SizedBox(
                width: 8,
              ),
              buildOTPTextFieldHelper(
                onChanged: (value) => digit4 = value,
                textError: 'Required',
                context: context,
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
                  phoneNumber: phoneNumber!,
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
