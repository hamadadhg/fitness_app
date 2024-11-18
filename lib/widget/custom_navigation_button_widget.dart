import 'package:fitness_app/widget/custom_text_widget.dart';
import 'package:flutter/material.dart';

class CustomNavigationButtonWidget extends StatelessWidget {
  const CustomNavigationButtonWidget({
    super.key,
    required this.onTap,
  });
  final void Function()? onTap;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        height: 55,
        width: 220,
        decoration: BoxDecoration(
          color: const Color(
            0xffFFFFFF,
          ),
          borderRadius: BorderRadius.circular(
            12,
          ),
        ),
        child: const Center(
          child: CustomTextWidget(
            text: 'Get Started',
            color: Color(
              0xff9A9A9A,
            ),
            fontSize: 27,
          ),
        ),
      ),
    );
  }
}
