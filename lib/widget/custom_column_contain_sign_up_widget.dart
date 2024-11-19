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
        const CustomRowInCornerWidget(),
        Row(
          children: [
            const CustomStackWidget(
              heightToContainer: 324,
              widthToContainer: 324,
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
        const CustomLoginWithSocialAccountWidget(
          firstHeight: 120,
          secondHeight: 20,
          firstWidth: 40,
          thirdHeight: 25,
          secondWidth: 10,
        ),
      ],
    );
  }
}
