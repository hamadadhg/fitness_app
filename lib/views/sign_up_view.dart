import 'package:fitness_app/constant.dart';
import 'package:fitness_app/widget/custom_column_contain_sign_up_widget.dart';
import 'package:fitness_app/widget/custom_icon_button_widget.dart';
import 'package:fitness_app/widget/custom_linear_gradient_widget.dart';
import 'package:flutter/material.dart';

class SignUpView extends StatelessWidget {
  const SignUpView({super.key});
  static String signUpViewId = 'SignUpView';
  @override
  Widget build(BuildContext context) {
    return CustomLinearGradientWidget(
      widget: Scaffold(
        backgroundColor: kTransparentColor,
        resizeToAvoidBottomInset: false,
        appBar: AppBar(
          automaticallyImplyLeading: false,
          leading: const CustomIconButtonWidget(),
          backgroundColor: kTransparentColor,
        ),
        body: const CustomColumnContainSignUpWidget(),
      ),
    );
  }
}
