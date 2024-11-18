import 'package:fitness_app/widget/custom_text_widget.dart';
import 'package:flutter/material.dart';

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
