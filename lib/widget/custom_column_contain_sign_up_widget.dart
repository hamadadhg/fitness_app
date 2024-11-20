import 'package:fitness_app/constant.dart';
import 'package:fitness_app/widget/custom_contain_container_in_sign_up_widget.dart';
import 'package:fitness_app/widget/custom_login_with_social_account_widget.dart';
import 'package:fitness_app/widget/custom_row_in_corner_widget.dart';
import 'package:fitness_app/widget/custom_stack_widget.dart';
import 'package:fitness_app/widget/custom_text_button_widget.dart';
import 'package:flutter/material.dart';

class CustomColumnContainSignUpWidget extends StatelessWidget {
  const CustomColumnContainSignUpWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            CustomTextButtonWidget(
              text: 'Or Login',
              color: kWhiteColor,
              onPressed: () {
                Navigator.pop(
                  context,
                );
              },
              fontSize: 19,
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
            child: CustomContainContainerInSignUpWidget(),
          ),
        ),
        const CustomLoginWithSocialAccountWidget(),
      ],
    );
  }
}
