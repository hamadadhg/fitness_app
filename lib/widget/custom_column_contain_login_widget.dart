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
        const CustomRowInCornerWidget(),
        Row(
          children: [
            const CustomStackWidget(
              widget: SizedBox(
                width: 210,
                child: CustomContainContainerInLoginWidget(),
              ),
            ),
            Transform.translate(
              offset: const Offset(
                -30,
                -60,
              ),
              child: CustomTextButtonWidget(
                onPressed: () {
                  Navigator.of(context).pushNamed(
                    SignUpView.signUpViewId,
                  );
                },
                fontSize: 19,
                text: 'Sign Up',
                color: kWhiteColor,
              ),
            ),
          ],
        ),
        const CustomLoginWithSocialAccountWidget(),
      ],
    );
  }
}
