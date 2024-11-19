import 'package:fitness_app/constant.dart';
import 'package:flutter/material.dart';

class CustomStackWidget extends StatelessWidget {
  const CustomStackWidget({
    super.key,
    required this.widget,
    required this.heightToContainer,
    required this.widthToContainer,
  });
  final Widget widget;
  final double heightToContainer;
  final double widthToContainer;
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
              height: heightToContainer,
              width: widthToContainer,
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
