import 'package:fitness_app/widget/custom_linear_gradient_widget.dart';
import 'package:fitness_app/widget/custom_text_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomLinearGradientWidget(
      widget: Scaffold(
        backgroundColor: Colors.transparent,
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const CustomCircleAvatarWidget(),
            Container(),
          ],
        ),
      ),
    );
  }
}

class CustomCircleAvatarWidget extends StatelessWidget {
  const CustomCircleAvatarWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return const CircleAvatar(
      backgroundColor: Color(
        0xffFFFFFF,
      ),
      radius: 200,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          CustomTextWidget(
            text: 'Your',
          ),
          CustomTextWidget(
            text: 'Logo',
          ),
        ],
      ),
    );
  }
}
