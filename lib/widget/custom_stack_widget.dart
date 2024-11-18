import 'package:fitness_app/constant.dart';
import 'package:flutter/material.dart';

class CustomStackWidget extends StatelessWidget {
  const CustomStackWidget({
    super.key,
    required this.widget,
  });
  final Widget widget;
  @override
  Widget build(BuildContext context) {
    return Transform.translate(
      offset: const Offset(
        -28,
        50,
      ),
      child: Stack(
        alignment: Alignment.center,
        children: [
          Transform.rotate(
            angle: 0.785398,
            child: Container(
              height: 300,
              width: 300,
              decoration: BoxDecoration(
                color: kWhiteColor,
                borderRadius: BorderRadius.circular(
                  24,
                ),
              ),
            ),
          ),
          Positioned(
            top: 10,
            child: widget,
          ),
        ],
      ),
    );
  }
}
