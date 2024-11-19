import 'package:fitness_app/constant.dart';
import 'package:fitness_app/views/login_view.dart';
import 'package:fitness_app/widget/custom_circle_avatar_widget.dart';
import 'package:fitness_app/widget/custom_navigation_button_widget.dart';
import 'package:flutter/material.dart';

class CustomColumnContainHomeViewWidget extends StatelessWidget {
  const CustomColumnContainHomeViewWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        const SizedBox(
          height: 30,
        ),
        const CustomCircleAvatarWidget(),
        CustomNavigationButtonWidget(
          height: 55,
          width: 220,
          fontSize: 27,
          colorToContainer: kWhiteColor,
          text: 'Get Started',
          colorToText: kGreyColor,
          wordToNavigationOnThisView: LoginView.loginViewId,
        ),
      ],
    );
  }
}
