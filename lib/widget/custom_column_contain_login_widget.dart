import 'package:fitness_app/constant.dart';
import 'package:fitness_app/views/sign_up_view.dart';
import 'package:fitness_app/widget/custom_contain_container_in_login_widget.dart';
import 'package:fitness_app/widget/custom_container_social_icon_widget.dart';
import 'package:fitness_app/widget/custom_icon_widget.dart';
import 'package:fitness_app/widget/custom_row_in_corner_widget.dart';
import 'package:fitness_app/widget/custom_stack_widget.dart';
import 'package:fitness_app/widget/custom_text_button_widget.dart';
import 'package:fitness_app/widget/custom_text_widget.dart';
import 'package:flutter/material.dart';

class CustomColumnContainLoginWidget extends StatelessWidget {
  const CustomColumnContainLoginWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const SizedBox(
          height: 50,
        ),
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
        const SizedBox(
          height: 130,
        ),
        CustomTextWidget(
          text: 'Login With Social Account?',
          color: kWhiteColor,
          fontSize: 18,
        ),
        const SizedBox(
          height: 25,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            CustomContainerSocialIconWidget(
              height: 50,
              width: 50,
              borderRadius: 28,
              widget: GestureDetector(
                onTap: () {},
                child: CustomIconWidget(
                  iconData: Icons.facebook,
                  color: kBlueColor,
                  size: 50,
                ),
              ),
            ),
            const SizedBox(
              width: 50,
            ),
            CustomContainerSocialIconWidget(
              height: 50,
              width: 45,
              borderRadius: 24,
              widget: GestureDetector(
                onTap: () {},
                child: Image.network(
                  'https://upload.wikimedia.org/wikipedia/commons/thumb/c/c1/Google_%22G%22_logo.svg/2048px-Google_%22G%22_logo.svg.png',
                ),
              ),
            ),
          ],
        ),
        const SizedBox(
          height: 35,
        ),
        GestureDetector(
          onTap: () {},
          child: CustomContainerSocialIconWidget(
            height: 45,
            width: 250,
            borderRadius: 28,
            widget: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                CustomIconWidget(
                  iconData: Icons.apple,
                  color: kBlackColor,
                  size: 30,
                ),
                const SizedBox(
                  width: 15,
                ),
                CustomTextWidget(
                  text: 'Sign in with Apple',
                  color: kBlackColor,
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}