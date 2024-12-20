import 'package:fitness_app/constant.dart';
import 'package:fitness_app/widget/custom_column_contain_login_widget.dart';
import 'package:fitness_app/widget/custom_icon_button_widget.dart';
import 'package:fitness_app/widget/custom_linear_gradient_widget.dart';
import 'package:flutter/material.dart';

class LoginView extends StatelessWidget {
  const LoginView({super.key});
  static String loginViewId = 'LoginView';
  @override
  Widget build(BuildContext context) {
    return CustomLinearGradientWidget(
      widget: Scaffold(
        resizeToAvoidBottomInset: false,
        backgroundColor: kTransparentColor,
        appBar: AppBar(
          backgroundColor: kTransparentColor,
          leading: const CustomIconButtonWidget(),
        ),
        body: Transform.translate(
          offset: const Offset(
            0,
            -25,
          ),
          child: const CustomColumnContainLoginWidget(),
        ),
      ),
    );
  }
}
