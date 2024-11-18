import 'package:flutter/material.dart';

class CustomStackWidget extends StatelessWidget {
  const CustomStackWidget({
    super.key,
    required this.widget,
  });
  final Widget widget;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(
        top: 30,
        right: 110,
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
                color: const Color(
                  0xffFFFFFF,
                ),
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
