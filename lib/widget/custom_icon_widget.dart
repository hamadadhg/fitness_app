import 'package:flutter/material.dart';

class CustomIconWidget extends StatelessWidget {
  const CustomIconWidget({
    super.key,
    required this.iconData,
    required this.color,
    required this.size,
  });
  final IconData iconData;
  final Color color;
  final double size;
  @override
  Widget build(BuildContext context) {
    return Icon(
      iconData,
      color: color,
      size: size,
    );
  }
}
