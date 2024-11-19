import 'package:fitness_app/constant.dart';
import 'package:fitness_app/widget/custom_linear_gradient_widget.dart';
import 'package:flutter/material.dart';

class OTPView extends StatelessWidget {
  const OTPView({super.key});
  static String otpViewId = 'OTPView';
  @override
  Widget build(BuildContext context) {
    return CustomLinearGradientWidget(
      widget: Scaffold(
        backgroundColor: kTransparentColor,
      ),
    );
  }
}
