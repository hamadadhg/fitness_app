import 'package:fitness_app/widget/custom_circle_avatar_widget.dart';
import 'package:fitness_app/widget/custom_linear_gradient_widget.dart';
import 'package:fitness_app/widget/custom_navigation_button_widget.dart';
import 'package:flutter/material.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomLinearGradientWidget(
      widget: Scaffold(
        backgroundColor: Colors.transparent,
        body: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            const SizedBox(
              height: 30,
            ),
            const CustomCircleAvatarWidget(),
            CustomNavigationButtonWidget(
              onTap: () {},
            ),
          ],
        ),
      ),
    );
  }
}
