import 'package:fitness_app/constant.dart';
import 'package:fitness_app/widget/custom_text_widget.dart';
import 'package:flutter/material.dart';

class CustomCircleAvatarWidget extends StatelessWidget {
  const CustomCircleAvatarWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return CircleAvatar(
      backgroundColor: kWhiteColor,
      radius: 210,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          CustomTextWidget(
            text: 'your',
            color: kDeepPurpleColor,
            fontSize: 100,
          ),
          CustomTextWidget(
            text: 'LOGO',
            color: kDeepPurpleColor,
            fontSize: 100,
          ),
        ],
      ),
    );
  }
}
