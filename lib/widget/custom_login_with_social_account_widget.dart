import 'package:fitness_app/constant.dart';
import 'package:fitness_app/widget/custom_container_social_icon_widget.dart';
import 'package:fitness_app/widget/custom_icon_widget.dart';
import 'package:fitness_app/widget/custom_text_widget.dart';
import 'package:flutter/material.dart';

class CustomLoginWithSocialAccountWidget extends StatelessWidget {
  const CustomLoginWithSocialAccountWidget({
    super.key,
    this.firstHeight = 130,
    this.secondHeight = 25,
    this.firstWidth = 50,
    this.thirdHeight = 35,
    this.secondWidth = 15,
  });
  final double firstHeight;
  final double secondHeight;
  final double thirdHeight;
  final double firstWidth;
  final double secondWidth;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          height: firstHeight,
        ),
        CustomTextWidget(
          text: 'Login With Social Account?',
          color: kWhiteColor,
          fontSize: 18,
        ),
        SizedBox(
          height: secondHeight,
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
            SizedBox(
              width: firstWidth,
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
        SizedBox(
          height: thirdHeight,
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
                SizedBox(
                  width: secondWidth,
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
