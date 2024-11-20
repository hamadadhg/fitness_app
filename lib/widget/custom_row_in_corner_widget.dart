import 'package:fitness_app/constant.dart';
import 'package:fitness_app/widget/custom_text_widget.dart';
import 'package:flutter/material.dart';

class CustomRowInCornerWidget extends StatelessWidget {
  const CustomRowInCornerWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        CustomTextWidget(
          text: 'your',
          color: kWhiteColor,
          fontSize: 35,
        ),
        CustomTextWidget(
          text: 'LOGO',
          color: kWhiteColor,
          fontSize: 35,
        ),
      ],
    );
  }
}
