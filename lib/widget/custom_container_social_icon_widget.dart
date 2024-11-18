import 'package:fitness_app/constant.dart';
import 'package:flutter/material.dart';

class CustomContainerSocialIconWidget extends StatelessWidget {
  const CustomContainerSocialIconWidget({
    super.key,
    required this.height,
    required this.width,
    required this.borderRadius,
    required this.widget,
  });
  final double height;
  final double width;
  final double borderRadius;
  final Widget widget;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: height,
      width: width,
      decoration: BoxDecoration(
        color: kWhiteColor,
        borderRadius: BorderRadius.circular(
          borderRadius,
        ),
      ),
      child: widget,
    );
  }
}
