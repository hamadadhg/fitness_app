import 'package:fitness_app/constant.dart';
import 'package:fitness_app/views/sign_up_view.dart';
import 'package:fitness_app/widget/custom_contain_container_in_login_widget.dart';
import 'package:fitness_app/widget/custom_login_with_social_account_widget.dart';
import 'package:fitness_app/widget/custom_row_in_corner_widget.dart';
import 'package:fitness_app/widget/custom_stack_widget.dart';
import 'package:fitness_app/widget/custom_text_button_widget.dart';
import 'package:flutter/material.dart';

class CustomColumnContainLoginWidget extends StatelessWidget {
  const CustomColumnContainLoginWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            CustomTextButtonWidget(
              onPressed: () {
                Navigator.of(context).pushNamed(
                  SignUpView.signUpViewId,
                );
              },
              fontSize: 17,
              text: 'Or Sign Up',
              color: kWhiteColor,
            ),
            const CustomRowInCornerWidget(),
          ],
        ),
        const CustomStackWidget(
          heightToContainer: 335,
          widthToContainer: 335,
          horizontalOffset: -15,
          widget: SizedBox(
            width: 260,
            child: CustomContainContainerInLoginWidget(),
          ),
        ),
        const CustomLoginWithSocialAccountWidget(),
      ],
    );
  }
}
