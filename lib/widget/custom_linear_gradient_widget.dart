import 'package:flutter/material.dart';

class CustomLinearGradientWidget extends StatelessWidget {
  const CustomLinearGradientWidget({
    super.key,
    required this.widget,
  });
  final Widget widget;
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        gradient: LinearGradient(
          colors: [
            Color(
              0xff320A5F,
            ),
            Color(
              0xffAC41E8,
            ),
          ],
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
        ),
      ),
      child: widget,
    );
  }
}
