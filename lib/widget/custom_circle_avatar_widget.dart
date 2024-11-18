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
            text: 'your',
            color: Color(
              0xff411270,
            ),
            fontSize: 100,
          ),
          CustomTextWidget(
            text: 'LOGO',
            color: Color(
              0xff411270,
            ),
            fontSize: 100,
          ),
        ],
      ),
    );
  }
}
