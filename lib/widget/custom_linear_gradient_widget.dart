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
              0xff411371,
            ),
            Color(
              0xffA73EE1,
            ),
          ],
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
        ),
      ),
    );
  }
}
