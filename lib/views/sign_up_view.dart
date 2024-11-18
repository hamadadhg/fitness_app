import 'package:fitness_app/constant.dart';
import 'package:fitness_app/widget/custom_contain_container_in_sign_up_widget.dart';
import 'package:fitness_app/widget/custom_linear_gradient_widget.dart';
import 'package:fitness_app/widget/custom_row_in_corner_widget.dart';
import 'package:fitness_app/widget/custom_stack_widget.dart';
import 'package:fitness_app/widget/custom_text_button_widget.dart';
import 'package:flutter/material.dart';

class SignUpView extends StatelessWidget {
  const SignUpView({super.key});
  static String signUpViewId = 'SignUpView';
  @override
  Widget build(BuildContext context) {
    return CustomLinearGradientWidget(
      widget: Scaffold(
        resizeToAvoidBottomInset: false,
        appBar: AppBar(
          automaticallyImplyLeading: false,
          leading: IconButton(
            onPressed: () {
              Navigator.pop(
                context,
              );
            },
            icon: Icon(
              Icons.arrow_back_ios,
              color: kWhiteColor,
            ),
          ),
          backgroundColor: kTransparentColor,
        ),
        backgroundColor: kTransparentColor,
        body: Column(
          children: [
            const CustomRowInCornerWidget(),
            Row(
              children: [
                const CustomStackWidget(
                  widget: SizedBox(
                    width: 210,
                    child: CustomContainContainerInSignUpWidget(),
                  ),
                ),
                Transform.translate(
                  offset: const Offset(
                    -30,
                    -60,
                  ),
                  child: CustomTextButtonWidget(
                    onPressed: () {
                      Navigator.pop(
                        context,
                      );
                    },
                    fontSize: 23,
                    text: 'Login',
                    color: kWhiteColor,
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
