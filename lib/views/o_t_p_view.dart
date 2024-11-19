import 'package:fitness_app/constant.dart';
import 'package:fitness_app/widget/custom_contain_container_in_o_t_p_widget.dart';
import 'package:fitness_app/widget/custom_icon_button_widget.dart';
import 'package:fitness_app/widget/custom_linear_gradient_widget.dart';
import 'package:fitness_app/widget/custom_row_in_corner_widget.dart';
import 'package:fitness_app/widget/custom_stack_widget.dart';
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
