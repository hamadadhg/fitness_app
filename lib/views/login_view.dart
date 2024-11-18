import 'package:fitness_app/widget/custom_column_login_widget.dart';
import 'package:fitness_app/widget/custom_linear_gradient_widget.dart';
import 'package:fitness_app/widget/custom_row_in_corner_widget.dart';
import 'package:fitness_app/widget/custom_stack_widget.dart';
import 'package:flutter/material.dart';

class LoginView extends StatelessWidget {
  const LoginView({super.key});
  static String loginViewId = 'LoginView';
  @override
  Widget build(BuildContext context) {
    return const CustomLinearGradientWidget(
      widget: Scaffold(
        backgroundColor: Colors.transparent,
        body: Column(
          children: [
            SizedBox(
              height: 50,
            ),
            CustomRowInCornerWidget(),
            CustomStackWidget(
              widget: SizedBox(
                width: 200,
                child: CustomColumnLoginWidget(),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
