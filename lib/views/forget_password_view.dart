import 'package:fitness_app/constant.dart';
import 'package:fitness_app/widget/custom_contain_container_in_forget_password_widget.dart';
import 'package:fitness_app/widget/custom_icon_button_widget.dart';
import 'package:fitness_app/widget/custom_linear_gradient_widget.dart';
import 'package:fitness_app/widget/custom_row_in_corner_widget.dart';
import 'package:fitness_app/widget/custom_stack_widget.dart';
import 'package:flutter/material.dart';

class ForgetPasswordView extends StatelessWidget {
  const ForgetPasswordView({super.key});
  static String forgetPasswordViewId = 'ForgetPasswordView';
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
              horizontalOffset: -75,
              widget: SizedBox(
                width: 220,
                child: CustomContainContainerInForgetPasswordWidget(),
              ),
              heightToContainer: 300,
              widthToContainer: 300,
            ),
          ],
        ),
      ),
    );
  }
}
